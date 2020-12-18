package source.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import database.UtilDataBase;
import model.Account;

@Controller
public class HomeController {

	@RequestMapping({ "/index", "/" })
	private String trangchu(HttpServletRequest request, Model model) {

		Account acount = UtilDataBase.getMinAccount(1);

		// Login
		request.getSession().setAttribute("currentAccount", acount);
		model.addAttribute("danhsachgoi", UtilDataBase.getPricing());
		model.addAttribute("danhsachcongviec", UtilDataBase.listJob());

		return "index-6";
	}

	
	@RequestMapping(value = "/pricing")
	public String goiBaiDang(Model model) {
		model.addAttribute("danhsachgoi", UtilDataBase.getPricing());
		return "goibaidang";
	}

	@RequestMapping(value = "/thanhtoan", params = { "id" })
	public String thanhtoan(Model model, HttpServletRequest request, @RequestParam(value = "id") int id) {
		model.addAttribute("goi", UtilDataBase.findPricingById(id));
		return "payment-methode";
	}
}