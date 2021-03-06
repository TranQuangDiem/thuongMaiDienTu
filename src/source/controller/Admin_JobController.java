package source.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import customutil.AccessHelper;
import database.JobDAO;
import model.Job;

@Controller
public class Admin_JobController {
	@RequestMapping(value = "/admin-list-job-post")
	public ModelAndView listJobPost(HttpSession session,@RequestParam(value = "page", required = false, defaultValue = "1") int page) {
		if(!AccessHelper.access(session, AccessHelper.ADMIN_ACCESS)){
			ModelAndView model = new ModelAndView("redirect:/index");
			return model;
		}
		ModelAndView model = new ModelAndView("admin/admin-list-job-post");
		String query = "SELECT job.id,job.tencongviec,job.chitiet,job.idAccount,job.img,job.soluongtuyen,job.ngaydang,job.finishday,job.`view`,job.major,job.`language`,job.exp,job.education,job.`status`,job.city,job.jobtype,account.fullname,job.active  FROM job JOIN account ON job.idAccount=account.id LIMIT ?,?";
		/** HANDLE PAGE */
		int totalRecords = JobDAO.getAllTotalRecords();
		int itemInOnePage = 10;
		int totalPages = (int) Math.ceil((double) totalRecords / itemInOnePage);
		int pageIndex = page;
		int maxPage = 5;
		int startPageIndex = Math.max(1, pageIndex - maxPage / 2);
		int endPageIndex = Math.min(totalPages, pageIndex + maxPage / 2);
		model.addObject("totalRecords", totalRecords);
		model.addObject("pageIndex", pageIndex);
		model.addObject("maxPage", maxPage);
		model.addObject("totalPage", totalPages);
		model.addObject("fristPage", 1);
		model.addObject("lastPage", totalPages);
		model.addObject("nextPage", pageIndex == totalPages ? -1 : pageIndex + 1);
		model.addObject("previousPage", pageIndex == 1 ? -1 : pageIndex - 1);
		model.addObject("startPageIndex", startPageIndex);
		model.addObject("endPageIndex", endPageIndex);
		/** MAIN MODEL */
		model.addObject("listJobs", JobDAO.getListJobsWithPage(page, itemInOnePage, query, ""));
		return model;
	}

	@RequestMapping(value = "/admin-detail-job-post")
	public ModelAndView detailJobPost(HttpSession session,@RequestParam(value = "id") int id) {
		if(!AccessHelper.access(session, AccessHelper.ADMIN_ACCESS)){
			ModelAndView model = new ModelAndView("redirect:/index");
			return model;
		}
		ModelAndView model = new ModelAndView("admin/admin-detail-job-post");
		Job job = JobDAO.getJobById(id);
		if (job == null) {
			model.setViewName("redirect:/admin-index");
		} else {
			model.addObject("job", job);
		}
		return model;
	}

	@RequestMapping(value = "/admin-hide-post")
	public @ResponseBody String hidePost(@RequestParam(value = "id") int id,
			@RequestParam(value = "isHide", defaultValue = "false") boolean isHide) {
		if (JobDAO.setHidePost(id, isHide)) {
			return "ok";
		} else {
			return "fail";
		}
	}
}
