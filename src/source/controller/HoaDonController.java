package source.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import config.CommonConst;
import database.HoaDonDatabase;
import database.UtilDataBase;
import database.ViTienDatabase;
import model.Account;
import model.HoaDon;
import model.Pricing;
import model.ViTien;

@Controller
public class HoaDonController {
	@RequestMapping(value="/vitien")
	public String vitien(Model model,HttpServletRequest request) {
		Account currentAccount=(Account) request.getSession().getAttribute(CommonConst.SESSION_ACCOUNT);
		if (currentAccount!=null) {
			Account freelancer=UtilDataBase.getAccount(currentAccount.getId());
			model.addAttribute("vitien", ViTienDatabase.findIdAccount(currentAccount.getId()));
			List<HoaDon> list=HoaDonDatabase.findByIdAccount(currentAccount.getId());
			model.addAttribute("hoadon", list);
			model.addAttribute("freelancer", freelancer);
			model.addAttribute("soluonggiaodich", list.size());
			
			return "e-wallet"; 
		}else {
			return "redirect:/loginpage";
		}
	}

	@RequestMapping(value = "/hoadon", params = { "id" })
	public String luuHoaDon(@RequestParam("id") int id, HttpSession session) {
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		Account acc = (Account) session.getAttribute(CommonConst.SESSION_ACCOUNT);
		if (acc!=null) {
		Pricing pricing = UtilDataBase.findPricingById(id);
		ViTien viTien = ViTienDatabase.findIdAccount(acc.getId());
		HoaDon hoaDon = new HoaDon(acc.getId(), pricing.getTengoi(), pricing.getSoluongbaidang(), date, date,
				pricing.getGia());
		if (viTien.getTongTien() >= pricing.getGia()) {
			HoaDonDatabase.update(acc.getId());
			HoaDonDatabase.save(hoaDon, pricing.getThoihan());
			ViTienDatabase.Update(acc.getId(), viTien.getTongTien() - pricing.getGia());
			return "redirect:/";
		} else {
			return "payment-methode";
		}
		}else {
			return "redirect:/loginpage";
		}
	}
}
