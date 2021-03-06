package source.controller;

import java.util.Date; 
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.BeanWrapper;
import org.springframework.beans.BeanWrapperImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import config.CommonConst;
import database.AccountDAO;
import database.EmployerProfileDatabase;
import database.FreeLancerProfileDatabase;
import database.MajorDAO;
import database.ReportDatabase;
import database.UtilDataBase;
import dataform.FormReport;
import dataform.FormSettingsEmployer;
import model.Account;
import model.Evaluate;
import model.Job;
import model.Major;

@Controller
public class EmployerProfileController {
	// url: /employer-profile?id_employer=1
	
		@RequestMapping(value="/employer-profile", params = { "id_employer" })
		public String layout(HttpServletRequest request,Model model, @RequestParam(value = "id_employer") int id_employer) {
			Account currentAccount=(Account) request.getSession().getAttribute(CommonConst.SESSION_ACCOUNT);
		model.addAttribute("currentAccount", currentAccount);

			List<Major> lstMajor=MajorDAO.getAll();
			model.addAttribute("lstMajor", lstMajor);
			model.addAttribute("currentAccount", currentAccount);
			Account employer=AccountDAO.getUserById(id_employer);
			model.addAttribute("employer",employer);
			model.addAttribute("listjob", EmployerProfileDatabase.listjobEmployer(id_employer));
			model.addAttribute("count",EmployerProfileDatabase.countJob(id_employer) );
			
			return "employer-profile";
		}
		@RequestMapping(value = "/employer-profile-settings", params = { "id_employer" }, method = RequestMethod.GET)
		public String settings(Model model, @RequestParam(value = "id_employer") int id_employer) {
			model.addAttribute("id_employer", id_employer + "");
			return "employer-profile/settings";
		}

		@RequestMapping(value="/employer-profile/settings/update", method= RequestMethod.POST, produces = "text/plain;charset=UTF-8")
		public String update(HttpServletRequest request, @ModelAttribute("FormSettingsEmployer") FormSettingsEmployer formSettingsEmployer) {
			EmployerProfileDatabase.update(formSettingsEmployer.toAccount());
			return "redirect:/employer-profile?id_employer="+formSettingsEmployer.getIdAccount();
		}
		
		@RequestMapping(value = "/employer-evaluate", params = { "id_employer" }, method = RequestMethod.GET)
		public String evaluate(Model model, @RequestParam(value = "id_employer") int id_employer) {
			model.addAttribute("id_employer", id_employer + "");
			return "employer-profile/evaluate";
		}
		@RequestMapping(value = "/get-row-evaluate-employer", params = { "numberPage", "id_employer" }, method = RequestMethod.GET)
		public String getRowsEvaluate(Model model, @RequestParam(value = "id_employer") int id_employer,
				@RequestParam(value = "numberPage") int numberPage) {
			List<Evaluate> lstEvaluate = FreeLancerProfileDatabase.getEvaluate(id_employer, numberPage);
			model.addAttribute("listEvaluate", lstEvaluate);
			model.addAttribute("id_freelancer", id_employer + "");
			return "/employer-profile/row_evaluate";
		}

		
		@RequestMapping(value = "/submit-evaluate-employer", params = { "rating", "id_employer",
				"comment" }, method = RequestMethod.POST)
		public String submitReview(HttpServletRequest request,Model model, @RequestParam(value = "rating") int rating,
				@RequestParam(value = "comment") String comment, @RequestParam(value = "id_employer") int id_employer) {
//			System.out.println(currentAccount.getUsername());
			Account currentAccount = (Account) request.getSession().getAttribute(CommonConst.SESSION_ACCOUNT);
			
			String []comments = comment.split("^[\\n\\r]$");
			comment="";
			for(String str: comments) {
				comment+="<p>";
				comment+=str;
				comment+="</p>";
			}
			
			BeanWrapper evaluateBean = new BeanWrapperImpl(new Evaluate());
			evaluateBean.setPropertyValue("content", comment);
			evaluateBean.setPropertyValue("star", rating);
			evaluateBean.setPropertyValue("time", new Date());
			evaluateBean.setPropertyValue("guest", currentAccount);
			
			Evaluate evaluate= new Evaluate();
			evaluate.setContent(comment);
			evaluate.setStar(rating);
			evaluate.setTime(new Date());
			evaluate.setGuest(currentAccount);
			FreeLancerProfileDatabase.insertEvaluate(id_employer, evaluate);
			
			List<Evaluate> lstEvaluate = EmployerProfileDatabase.getEvaluate(id_employer, 0);

			model.addAttribute("listEvaluate", lstEvaluate);
			
			return "/employer-profile/row_evaluate";

			
		}
		@RequestMapping(value = "/test")
		public String test() {
			return "test";
		}
		
		@RequestMapping(value = "/post-job", params = { "id_employer" }, method = RequestMethod.POST)
		public String string(Model model, @RequestParam(value = "id_employer") int id_employer) {
			List<Job> listjob = EmployerProfileDatabase.listjobEmployer(id_employer);			
			model.addAttribute("list", listjob + "");
			return "employer-profile/post-job";
		}
		@RequestMapping(value = "/employer-report", params = { "id_employer" }, method = RequestMethod.GET)
		public String report(Model model, @RequestParam(value = "id_employer") int id_employer) {
			model.addAttribute("id_employer", id_employer + "");
			return "employer-profile/report";
		}

		@RequestMapping(value = "/report",params = { "id_employer" },  method = RequestMethod.POST)
		public String report(@ModelAttribute("formreport") FormReport form,@RequestParam(value = "id_employer") int id_employer,
				 HttpServletRequest request) {
			Account acc = (Account) request.getSession().getAttribute(CommonConst.SESSION_ACCOUNT);
			System.out.println(form);
			MultipartFile img1 = form.getImg1();
			MultipartFile img2 = form.getImg2();
			MultipartFile img3 = form.getImg3();
			String title = form.getTitle();
			String content = form.getContent();
			long millis = System.currentTimeMillis();
			java.sql.Date date = new java.sql.Date(millis);
			ReportDatabase.insert(form, acc.getId(), id_employer, date);
			return "/employer-profile/report";

		}
		

			
		
}
