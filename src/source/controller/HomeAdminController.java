package source.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import database.EmployerProfileDatabase;

@Controller
public class HomeAdminController {
	@RequestMapping(value="/admin-index")
	public ModelAndView home() {
		ModelAndView model= new ModelAndView("admin/admin-index");
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
