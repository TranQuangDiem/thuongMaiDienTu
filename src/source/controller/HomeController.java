package source.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import database.HoaDonDatabase;
import database.JobDAO;
import database.MajorDAO;
import database.UtilDataBase;
import model.Account;
import model.Job;

@Controller
public class HomeController {

	@RequestMapping({ "/index", "/" })
	private String trangchu(HttpServletRequest request, Model model, HttpSession session) {
		Account acc = (Account) session.getAttribute("taikhoan");
		if (acc != null) {
			model.addAttribute("danhsachgoi",
					UtilDataBase.getPricingLimit(3, HoaDonDatabase.kiemtraGoiDungThu(acc.getId())));
		} else {
			model.addAttribute("danhsachgoi", UtilDataBase.getPricingLimit(3, false));
		}
		model.addAttribute("listJobsForIndex",JobDAO.listJobsForIndex());
		model.addAttribute("listMajors", MajorDAO.getAll());
		model.addAttribute("numberJobIsOpen", JobDAO.numberJobIsOpen());
		model.addAttribute("danhsachcongviec", UtilDataBase.listJob());
		return "index-6";
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:index";
	}

	@RequestMapping(value = "/pricing")
	public String goiBaiDang(Model model, HttpSession session) {
		Account acc = (Account) session.getAttribute("taikhoan");
		if (acc != null) {
			model.addAttribute("danhsachgoi", UtilDataBase.getPricing(HoaDonDatabase.kiemtraGoiDungThu(acc.getId())));
		} else {
			model.addAttribute("danhsachgoi", UtilDataBase.getPricing(false));
		}

		return "goibaidang";
	}

	@RequestMapping(value = "/thanhtoan")
	public String thanhtoan() {
		return "payment-methode";
	}

	@RequestMapping(value = "/job-detail", params = { "id_job" }, method = RequestMethod.GET)
	public String layout(Model model, @RequestParam(value = "id_job") int id_job, HttpSession session)
			throws ClassNotFoundException, SQLException {
		Job job = UtilDataBase.getJob(id_job);
		model.addAttribute("job", job);
		model.addAttribute("job1", UtilDataBase.listJobLimit(1));
		model.addAttribute("joblienquan", UtilDataBase.listJobType(job.getJobType()));
		int view = JobDAO.view(id_job);
		JobDAO.tangView(id_job, view+1);
		Account acc = (Account) session.getAttribute("taikhoan");
		if (acc != null) {
			model.addAttribute("kiemtra", JobDAO.kiemtrajobSave(id_job, acc.getId()));
		} else {
			model.addAttribute("kiemtra", false);
		}
		return "job-detail";
	}

	@RequestMapping(value = "/savejob", params = { "id_job" })
	@ResponseBody
	public void save(@RequestParam("id_job") int idjob, HttpSession session, HttpServletResponse response)
			throws IOException {
		Account acc = (Account) session.getAttribute("taikhoan");
		if (acc != null) {
			JobDAO.luuJob(acc.getId(), idjob);
			response.setContentType("text/html;charset=UTF-8");
			response.setContentType("text/xml");
			response.setHeader("Cache-Control", "no-cache");
			response.getWriter().write("Đã lưu");
		} else {
			response.setContentType("text/html;charset=UTF-8");
			response.setContentType("text/xml");
			response.setHeader("Cache-Control", "no-cache");
			response.getWriter().write("");
		}

	}

	@RequestMapping(value = "/deletesavejob", params = { "id_job" })
	@ResponseBody
	public void delete(@RequestParam("id_job") int idjob, HttpSession session, HttpServletResponse response)
			throws IOException {
		Account acc = (Account) session.getAttribute("taikhoan");
		if (acc != null) {
			JobDAO.deleteJobSave(idjob, acc.getId());
			response.setContentType("text/html;charset=UTF-8");
			response.setContentType("text/xml");
			response.setHeader("Cache-Control", "no-cache");
			response.getWriter().write("lưu");
		} else {
			response.setContentType("text/html;charset=UTF-8");
			response.setContentType("text/xml");
			response.setHeader("Cache-Control", "no-cache");
			response.getWriter().write("");
		}

	}

	// xoa job da luu freelance
	@RequestMapping(value = "/deletejob", params = { "id_job", "idAccount" })
	public String delete(@RequestParam("id_job") int idjob, @RequestParam("idAccount") int idAccount) {
		JobDAO.deleteJobSave(idjob, idAccount);

		List<Job> j = new ArrayList<Job>();
		j = JobDAO.findJobSave(idAccount);
		return "redirect:/freelancer-profile?id_freelancer=" + idAccount;
	}
}