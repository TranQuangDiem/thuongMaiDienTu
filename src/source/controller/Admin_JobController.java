package source.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Admin_JobController {
	@RequestMapping(value = "/admin-list-job-post")
	public ModelAndView listPostJob() {
		ModelAndView model = new ModelAndView("admin/admin-list-job-post");
		
		return model;
	}
	
}
