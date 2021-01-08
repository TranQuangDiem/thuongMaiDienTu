package source.controller;

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
	public String vitien(Model model,HttpSession session) {
		Account acc = (Account) session.getAttribute("taikhoan");
		if (acc!=null) {
			model.addAttribute("vitien", ViTienDatabase.findIdAccount(acc.getId()));
			model.addAttribute("hoadon", HoaDonDatabase.findByIdAccount(acc.getId()));
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
		if (viTien.getTongTien() > pricing.getGia()) {
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
