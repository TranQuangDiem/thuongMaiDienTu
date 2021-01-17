package source.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import config.CommonConst;
import customutil.AccessHelper;
import database.JobApplyDetailDatabase;
import database.JobDAO;
import database.UtilDataBase;
import model.Account;
import model.Job;
import model.Subscriber;
@Controller
public class JobApplyDetailController{
	
	@RequestMapping(value = "/subscribers", params = { "id_job" }, method = RequestMethod.GET)
	public String subscribers(HttpSession session ,Model model,@RequestParam(value = "id_job") int id_job) {
		Account account = (Account)session.getAttribute(CommonConst.SESSION_ACCOUNT);
		Job job=JobDAO.getJobById(id_job);
		if(!AccessHelper.accessManagerApply(account, job)) {
			return "redirect:/index";
		}
		model.addAttribute("id_job", id_job + "");

		return "job-apply-detail/subscribers";
	}
	
	@RequestMapping(value = "/get-row-new-subscriber", params = { "id_subscriber_last", "id_job" }, method = RequestMethod.GET)
	public String getRowNewEvaluate(Model model, @RequestParam(value = "id_job") int id_job,
			@RequestParam(value = "id_subscriber_last") int id_subscriber_last) {
		List<Subscriber> lstEvaluate = JobApplyDetailDatabase.getSubscribers(id_job, id_subscriber_last);
		model.addAttribute("listEvaluate", lstEvaluate);
		model.addAttribute("id_job", id_job +"");
		return "job-apply-detail/row_subscriber";
	}
	@RequestMapping(value = "/get-row-subscriber", params = { "numberPage", "id_job" }, method = RequestMethod.GET)
	public String getRowsEvaluate(Model model, @RequestParam(value = "id_job") int id_job,
			@RequestParam(value = "numberPage") int numberPage) {
		List<Subscriber> lstSubscribe = JobApplyDetailDatabase.getSubscribers(id_job, numberPage);
		model.addAttribute("lstSubscribe", lstSubscribe);
		model.addAttribute("id_job", id_job +"");
		
		return "job-apply-detail/row_subscriber";
	}
	@ResponseBody
	@RequestMapping(value="/change-status-subscriber", params= {"freelancer_id", "id_job", "status"}, method=RequestMethod.POST)
	public String changeStatusSubscriber(HttpSession session ,@RequestParam(value="freelancer_id") int freelancer_id, @RequestParam(value = "id_job") int id_job, @RequestParam(value = "status") String status) {
		
		Job job=JobDAO.getJobById(id_job);
		Account account = (Account)session.getAttribute(CommonConst.SESSION_ACCOUNT);
		if(!AccessHelper.accessManagerApply(account, job)) {
			return "Error";
		}
		return (JobApplyDetailDatabase.changeStatusFreeLancer(freelancer_id,id_job, Subscriber.Status.valueOf(status)))?"Ok":"Error";
	}
	

}
