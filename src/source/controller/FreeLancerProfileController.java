package source.controller;

import java.io.IOException;
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
import database.FreeLancerProfileDatabase;
import database.UtilDataBase;
import dataform.FormSettingsFreelancer;
import model.Account;
import model.Evaluate;


@Controller
public class FreeLancerProfileController {

	// url: /freelancer-profile?id_freelancer=1
	@RequestMapping(value="/freelancer-profile", params = { "id_freelancer" })
	public String layout(HttpServletRequest request,Model model, @RequestParam(value = "id_freelancer") int id_freelancer) {
		//Account account = (Account) request.getSession().getAttribute("currentAccount");
		Account currentAccount=UtilDataBase.getAccount(1);
		Account freelancer=UtilDataBase.getAccount(id_freelancer);
		model.addAttribute("freelancer", freelancer);
		model.addAttribute("currentAccount", currentAccount);
		
//		System.out.println(currentAccount);
		return "freelancer-profile";
	}
	
	@RequestMapping(value = "/freelancer-profile/settings/update", method = RequestMethod.POST)
	public String submitSettings(@ModelAttribute("FormSettingsFreelancer")FormSettingsFreelancer  formSettingsFreelancer ) {
		System.out.println(formSettingsFreelancer);
		
			FreeLancerProfileDatabase.update(formSettingsFreelancer.toAccount());
		
		return "redirect:/freelancer-profile?id_freelancer="+formSettingsFreelancer.getIdAccount();
	}
	
	@RequestMapping(value = "/freelancer-profile-settings", params = { "id_freelancer" }, method = RequestMethod.GET)
	public String settings(Model model, @RequestParam(value = "id_freelancer") int id_freelancer) {
		model.addAttribute("id_freelancer", id_freelancer + "");
		return "freelancer-profile/settings";
	}

	@RequestMapping(value = "/evaluate", params = { "id_freelancer" }, method = RequestMethod.GET)
	public String evaluate(Model model, @RequestParam(value = "id_freelancer") int id_freelancer) {
		model.addAttribute("id_freelancer", id_freelancer + "");
		return "freelancer-profile/evaluate";
	}
	@RequestMapping(value = "/job-list", params = { "id_freelancer" }, method = RequestMethod.GET)
	public String jobList(Model model, @RequestParam(value = "id_freelancer") int id_freelancer) {
		model.addAttribute("id_freelancer", id_freelancer + "");
		return "freelancer-profile/job-list";
	}

	@RequestMapping(value = "/get-row-evaluate", params = { "numberPage", "id_freelancer" }, method = RequestMethod.GET)
	public String getRowsEvaluate(Model model, @RequestParam(value = "id_freelancer") int id_freelancer,
			@RequestParam(value = "numberPage") int numberPage) {
		List<Evaluate> lstEvaluate = FreeLancerProfileDatabase.getEvaluate(id_freelancer, numberPage);
		model.addAttribute("listEvaluate", lstEvaluate);
		model.addAttribute("id_freelancer", id_freelancer + "");
		return "/freelancer-profile/row_evaluate";
	}

	
	@RequestMapping(value = "/submit-evaluate", params = { "rating", "id_freelancer",
			"comment" }, method = RequestMethod.POST)
	public String submitReview(HttpServletRequest request,Model model, @RequestParam(value = "rating") int rating,
			@RequestParam(value = "comment") String comment, @RequestParam(value = "id_freelancer") int id_freelancer) {
//		System.out.println(currentAccount.getUsername());
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
		FreeLancerProfileDatabase.insertEvaluate(id_freelancer, evaluate);
		
		List<Evaluate> lstEvaluate = FreeLancerProfileDatabase.getEvaluate(id_freelancer, 0);

		model.addAttribute("listEvaluate", lstEvaluate);
		model.addAttribute("id_freelancer", id_freelancer + "");
		return "/freelancer-profile/row_evaluate";

		
	}

}
