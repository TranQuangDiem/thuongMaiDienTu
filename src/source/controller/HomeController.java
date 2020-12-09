package source.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import database.UtilDataBase;
import database.model.Pricing;

@Controller
public class HomeController {

	@RequestMapping({"/index", "/"})
    private String trangchu (){
        return "index-6";
    }
	
	@RequestMapping(value="/pricing")
	public String goiBaiDang(Model model) {
		model.addAttribute("danhsachgoi",UtilDataBase.getPricing());
		return "goibaidang";
	}
}