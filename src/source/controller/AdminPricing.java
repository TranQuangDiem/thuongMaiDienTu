package source.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import database.PricingDAO;
import database.UtilDataBase;
import model.Pricing;

@Controller
public class AdminPricing {
	
	@RequestMapping("/Pricing-manager")
	public String quanlybaidang(Model model) {
		model.addAttribute("listpricing", PricingDAO.finAll());
		return "admin/quanLyGoiBaiDang";
	}
	@RequestMapping("/pricing-detail")
	public String pricing(@RequestParam("id")int id,Model model) {
		model.addAttribute("pricing", UtilDataBase.findPricingById(id));
		return "admin/chiTietGoiBaiDang";
	}
	@RequestMapping(value="/pricing-detail",method=RequestMethod.POST)
	public String update(@RequestParam("id")int id,@ModelAttribute("Pricing")Pricing pricing,Model model) {
		model.addAttribute("pricing", UtilDataBase.findPricingById(id));
		PricingDAO.update(pricing);
		return "redirect:/Pricing-manager";
	}
	@RequestMapping("/pricing-add")
	public String add() {
		return "admin/themGoiBaiDang";
	}
	@RequestMapping(value="/pricing-add",method=RequestMethod.POST)
	public String addPricing(@ModelAttribute("Pricing")Pricing pricing,Model model) {
		PricingDAO.save(pricing);
		return "redirect:/Pricing-manager";
	}
	@RequestMapping("/Pricing-delete")
	public String delete(Model model,@RequestParam("id") int id) {
		model.addAttribute("listpricing", PricingDAO.finAll());
		PricingDAO.delete(id);
		return "admin/quanLyGoiBaiDang";
	}
}
