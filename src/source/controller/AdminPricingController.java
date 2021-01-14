package source.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import database.UtilDataBase;
import model.Pricing;

@Controller
public class AdminPricingController {
	
	@RequestMapping("/Quan-ly-goi-bai-dang")
	public String goibaidang(Model model,@RequestParam(value = "page", required = false, defaultValue = "1") int page) {
		model.addAttribute("listpricing", UtilDataBase.finAllPricingPage()); 
		return "admin/quanLyGoiBaiDang";
	}
	@RequestMapping("chiTietGoiBaiDang")
	public String chiTietGoiBaiDang(@RequestParam("id")int id,Model model) {
		model.addAttribute("pricing", UtilDataBase.findPricingById(id));
		return "admin/chiTietGoiBaiDang";
	}
	@RequestMapping("/updatePricing")
	public String update (@ModelAttribute("Pricing")Pricing pricing) {
		UtilDataBase.updatePricing(pricing);
		return "redirect:/Quan-ly-goi-bai-dang";
	}
	@RequestMapping("/addpricing")
	public String add() {
		return "admin/themGoiBaiDang";
	}
	@RequestMapping(value="/addpricing", method=RequestMethod.POST)
	public String add(@ModelAttribute("Pricing")Pricing pricing) {
		UtilDataBase.savePricing(pricing);
		return "redirect:/Quan-ly-goi-bai-dang";
	}
	@RequestMapping("/deletePricing")
	public String delete(@RequestParam("id") int id) {
		UtilDataBase.deletePricing(id);
		return "redirect:/Quan-ly-goi-bai-dang";
	}

}
