package source.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sun.org.apache.bcel.internal.generic.NEW;

import customutil.AccessHelper;
import customutil.StringHelper;
import database.MajorDAO;
import model.Major;

@Controller
public class Admin_MajorController {
	@RequestMapping(value = "/admin-list-major")
	public ModelAndView listMajor(HttpSession session) {
		if(!AccessHelper.access(session, AccessHelper.ADMIN_ACCESS)){
			ModelAndView model = new ModelAndView("redirect:/index");
			return model;
		}
		ModelAndView model = new ModelAndView("admin/admin-list-major");
		model.addObject("listMajor",MajorDAO.getAll());
		return model;
	}
	@RequestMapping(value = "/admin-addmajor")
	@ResponseBody
	public String addMajor(@RequestParam("major") String major) {
		if(StringHelper.isStringNull(major)) {
			return "empty";
		}else if(MajorDAO.isExists(major)) {
			return "exitst";
		}else if(!MajorDAO.addMajor(major)) {
			return "fail";
		}else {
			Major newMajor=MajorDAO.getByName(major);
			return newMajor.getId()+"  "+newMajor.getName();
		}
	}
	@RequestMapping(value = "/admin-deletemajor")
	@ResponseBody
	public String deleteMajor(@RequestParam("id") int id) {
		if(!MajorDAO.deleteMajor(id)) {
			return "fail";
		}else {
			return "ok";
		}
	}
}
