package source.controller;

import java.util.List;

import org.springframework.cglib.core.Local;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import database.FreeLancerPrefileDatabase;
import database.model.Evaluate;

@Controller
public class FreeLancerProfileController {
	@RequestMapping("/freelancer-profile")
	public ModelAndView helloWorld() {

		String message = "<br><div style='text-align:center;'>"
				+ "<h3>********** Hello World, Spring MVC Tutorial</h3>This message is coming from CrunchifyHelloWorld.java **********</div><br><br>";
		return new ModelAndView("freelancer-profile", "message", message);
	}

	@RequestMapping(value="/evaluate",
			params= {"id_freelancer"}, method=RequestMethod.GET)
	public String evaluate(Model model,
			@RequestParam(value="id_freelancer") int id_freelancer) {
		List<Evaluate> lstEvaluate=FreeLancerPrefileDatabase.getEvaluate(id_freelancer);

		model.addAttribute("listEvaluate", lstEvaluate);
		model.addAttribute("timezone", "UTC+07:00");
		return "freelancer-profile/evaluate";
	}

}
