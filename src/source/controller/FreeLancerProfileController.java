package source.controller;

import java.util.List;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import database.FreeLancerPrefileDatabase;
import database.model.Evaluate;

@Controller
public class FreeLancerProfileController {
	//url: /freelancer-profile?id_freelancer=1
	@RequestMapping("/freelancer-profile")
	public String helloWorld() {

		return "freelancer-profile";
	}

	@RequestMapping(value="/evaluate",
			params= {"id_freelancer"}, method=RequestMethod.GET)
	public String evaluate(Model model,
			@RequestParam(value="id_freelancer") int id_freelancer) {
		List<Evaluate> lstEvaluate=FreeLancerPrefileDatabase.getEvaluate(id_freelancer);

		model.addAttribute("listEvaluate", lstEvaluate);
		
		return "freelancer-profile/evaluate";
	}

}
