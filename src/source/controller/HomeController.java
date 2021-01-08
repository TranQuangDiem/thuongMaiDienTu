package source.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import database.HoaDonDatabase;
import database.JobDAO;
import database.UtilDataBase;
import model.Account;

@Controller
public class HomeController {

	@RequestMapping({ "/index", "/" })
	private String trangchu(HttpServletRequest request, Model model, HttpSession session) {
		Account acc = (Account) session.getAttribute("taikhoan");
		if (acc!=null) {
			model.addAttribute("danhsachgoi", UtilDataBase.getPricingLimit(3,HoaDonDatabase.kiemtraGoiDungThu(acc.getId())));
		}else {
		model.addAttribute("danhsachgoi", UtilDataBase.getPricingLimit(3,false));
		}
		model.addAttribute("danhsachcongviec", UtilDataBase.listJob());
		return "index-6";
	}

	@RequestMapping("/logout")
	public String logout (HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:index"; 
	}
	@RequestMapping(value = "/pricing")
	public String goiBaiDang(Model model ,HttpSession session) {
		Account acc = (Account) session.getAttribute("taikhoan");
		if (acc!=null) {
			model.addAttribute("danhsachgoi", UtilDataBase.getPricing(HoaDonDatabase.kiemtraGoiDungThu(acc.getId())));
		}else {
			model.addAttribute("danhsachgoi", UtilDataBase.getPricing(false));
		}
		
		return "goibaidang";
	}

	@RequestMapping(value = "/thanhtoan")
	public String thanhtoan() {
		return "payment-methode";
	}
	@RequestMapping(value ="/job-detail")
	public String jodDetail() {
		return "job-detail";
	}
	@RequestMapping(value="/savejob")
	public String save(@RequestParam("idjob") int idjob,HttpSession session) {
		Account acc = (Account) session.getAttribute("taikhoan");
		if (acc!=null) {
			JobDAO.luuJob(acc.getId(), idjob);
			return "redirect:/job-detail";
		}else {
			return "redirect:/loginpage";
		}
		
	}
}