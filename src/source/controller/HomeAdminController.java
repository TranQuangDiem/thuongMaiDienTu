package source.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import database.EmployerProfileDatabase;

@Controller
public class HomeAdminController {
	@RequestMapping(value="/homeAdmin")
	public String home() {
		return "/admintrangchu";
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
