package source.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Admin_JobController {
	@RequestMapping(value = "/admin-list-job-post")
	public ModelAndView listJobPost(@RequestParam(value = "page", required = false, defaultValue = "1") int page) {
		ModelAndView model = new ModelAndView("admin/admin-list-job-post");
		return model;
	}
	@RequestMapping(value="/admin-detail-job-post")
	public ModelAndView detailJobPost(@RequestParam(value="id") int id) {
		ModelAndView model = new ModelAndView("admin/admin-detail-job-post");
		return model;
	}
}
