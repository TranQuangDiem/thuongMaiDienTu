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

import database.EmployerProfileDatabase;
import database.FreeLancerProfileDatabase;
import model.Account;
import model.Evaluate;

@Controller
public class EmployerProfileController {
	// url: /employer-profile?id_employer=1
	
		@RequestMapping(value="/employer-profile", params = { "id_employer" })
		public String layout(HttpServletRequest request,Model model, @RequestParam(value = "id_employer") int id_employer) {
//			Account account = (Account) request.getSession().getAttribute("currentAccount");
//			Account currentAccount=UtilDataBase.getAccount(account.getId());
//			Account freelancer=UtilDataBase.getAccount(id_freelancer);
//			model.addAttribute("freelancer", freelancer);
//			model.addAttribute("currentAccount", currentAccount);
			
//			System.out.println(currentAccount);
			model.addAttribute("taikhoan",EmployerProfileDatabase.information(id_employer));
			model.addAttribute("listjob", EmployerProfileDatabase.listjobEmployer(id_employer));
			return "employer-profile";
		}
		@RequestMapping(value="/employer-profile/update",params= {"id_employer"}, method= RequestMethod.POST)
		public String update(HttpServletRequest request,@RequestParam(value = "id_employer") int id_employer, @ModelAttribute("Account") Account account) {
			EmployerProfileDatabase.update(account,id_employer);
			return "redirect:/employer-profile?id_employer="+account.getId();
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
				@RequestParam(value = "comment") String comment, @RequestParam(value = "id_freelancer") int id_employer) {
//			System.out.println(currentAccount.getUsername());
			Account account = (Account) request.getSession().getAttribute("currentAccount");
			
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
			evaluateBean.setPropertyValue("account", account);
			
			Evaluate evaluate= new Evaluate();
			evaluate.setContent(comment);
			evaluate.setStar(rating);
			evaluate.setTime(new Date());
			evaluate.setAccount(account);
			FreeLancerProfileDatabase.insertEvaluate(id_employer, evaluate);
			
			List<Evaluate> lstEvaluate = EmployerProfileDatabase.getEvaluate(id_employer, 0);

			model.addAttribute("listEvaluate", lstEvaluate);
			
			return "/employer-profile/row_evaluate";

			
		}
}
