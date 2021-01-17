package source.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import config.CommonConst;
import customutil.DateHelper;
import customutil.MyMailHandler;
import customutil.StringHelper;
import database.AccountDAO;
import database.JobDAO;
import database.MajorDAO;
import database.ReportDatabase;
import dataform.FormCreateJob;
import dataform.FormReport;
import model.Account;

public class ReportController {
//	@RequestMapping(value = "/report", params = { "id_employer" }, method = RequestMethod.POST)
//	public String settings(Model model, @RequestParam(value = "id_employer") int id_employer) {
//		model.addAttribute("id_employer", id_employer + "");
//		return "employer-profile/report";
//	}
//
	@RequestMapping(value = "/report", params = { "id_employer" }, method = RequestMethod.POST)
	public String report(@ModelAttribute("formreport") FormReport form,
			@RequestParam(value = "id_employer") int id_report, HttpServletRequest request) {
		Account acc = (Account) request.getSession().getAttribute(CommonConst.SESSION_ACCOUNT);
		System.out.println(form);
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		ReportDatabase.insert(form, acc.getId(), id_report, date);
		return "employer-profile/report";

	}
}
