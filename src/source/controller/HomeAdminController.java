package source.controller;

import java.util.Calendar;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import customutil.AccessHelper;
import database.EmployerProfileDatabase;
import database.StatisticalDatabase;

@Controller
public class HomeAdminController {
	
	@RequestMapping(value="/admin-index")
	public ModelAndView home(HttpSession session) {
		if(!AccessHelper.access(session, AccessHelper.ADMIN_ACCESS)){		
			ModelAndView model = new ModelAndView("redirect:/index");			
			return model ;
		}			
		long millis=System.currentTimeMillis();  
		java.sql.Date date=new java.sql.Date(millis);  
		System.out.println(date); 
		ModelAndView model= new ModelAndView("admin/index");
		model.addObject("total", StatisticalDatabase.Doanhthu());
		model.addObject("totalacc", StatisticalDatabase.totalacc());
		model.addObject("statistoday", StatisticalDatabase.statistoday());
		model.addObject("statis", StatisticalDatabase.statisMonth());
		model.addObject("statis1Month", StatisticalDatabase.statis1Month());
		model.addObject("statis2Month", StatisticalDatabase.statis2Month());
		model.addObject("statis3Month", StatisticalDatabase.statis3Month());
		model.addObject("statisMonth", StatisticalDatabase.statis4Month());
		model.addObject("sale", StatisticalDatabase.statisMonth() - StatisticalDatabase.statis1Month());
		model.addObject("profit",StatisticalDatabase.proit());
		return model;
	}
	@RequestMapping(value="/nhatuyendung")
	public String quanLyEmployer(Model model) {
		model.addAttribute("nhatuyendung", EmployerProfileDatabase.findAllEmployer());
		return "danhsachnhatuyendung";
	}
	@RequestMapping(value="/nhatuyendung/delete",params= {"id"})
	public String delete(@RequestParam("id")int id) {
		EmployerProfileDatabase.delete(id);
		return "redirect:/nhatuyendung";
	}

}
