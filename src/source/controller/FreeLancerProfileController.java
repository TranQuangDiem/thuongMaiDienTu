package source.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import database.FreeLancerPrefileDatabase;
import database.UtilDataBase;
import model.Account;
import model.Evaluate;


@Controller
public class FreeLancerProfileController {

	// url: /freelancer-profile?id_freelancer=1
	@RequestMapping("/freelancer-profile")
	public String helloWorld() {
		
		
		return "freelancer-profile";
	}

	@RequestMapping(value = "/evaluate", params = { "id_freelancer" }, method = RequestMethod.GET)
	public String evaluate(Model model, @RequestParam(value = "id_freelancer") int id_freelancer) {
//		List<Evaluate> lstEvaluate=FreeLancerPrefileDatabase.getEvaluate(id_freelancer);
//
//		model.addAttribute("listEvaluate", lstEvaluate);
		model.addAttribute("id_freelancer", id_freelancer + "");

		return "freelancer-profile/evaluate";
	}

	@RequestMapping(value = "/get-row-evaluate", params = { "numberPage", "id_freelancer" }, method = RequestMethod.GET)
	public String getRowsEvaluate(Model model, @RequestParam(value = "id_freelancer") int id_freelancer,
			@RequestParam(value = "numberPage") int numberPage) {
		List<Evaluate> lstEvaluate = FreeLancerPrefileDatabase.getEvaluate(id_freelancer, numberPage);

		model.addAttribute("listEvaluate", lstEvaluate);
		model.addAttribute("id_freelancer", id_freelancer + "");

		return "/freelancer-profile/row_evaluate";
	}

	@ResponseBody
	@RequestMapping(value = "/submit-evaluate", params = { "rating", "id_freelancer",
			"comment" }, method = RequestMethod.POST)
	public String submitReview(HttpServletRequest request,Model model, @RequestParam(value = "rating") int rating,
			@RequestParam(value = "comment") String comment, @RequestParam(value = "id_freelancer") int id_freelancer) {
//		System.out.println(currentAccount.getUsername());
		Account account = (Account) request.getSession().getAttribute("currentAccount");
		
		Evaluate evaluate = new Evaluate();
		evaluate.setContent(comment);
		evaluate.setStar(rating);
		evaluate.setTime(new Date());
		evaluate.setAccount(account);
		UtilDataBase.insertEvaluate(id_freelancer, evaluate);

		return "OK";
	}

}
