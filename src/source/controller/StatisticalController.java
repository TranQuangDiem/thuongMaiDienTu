package source.controller;

import org.springframework.web.bind.annotation.RequestMapping;

import database.StatisticalDatabase;

public class StatisticalController {
	@RequestMapping(value = "/admin-index")
	public String statis(){	
		int total = StatisticalDatabase.Doanhthu();	
		return "redirect:/index";

	}

}
