package source.controller;

import java.io.File;
import java.net.http.HttpRequest;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import config.CommonConst;
import customutil.StringHelper;
import database.JobDAO;
import database.MajorDAO;
import dataform.FormCreateJob;
import model.Account;

@Controller
public class JobController {

	@RequestMapping(value = "/create-job")
	public ModelAndView createJobPage(HttpServletRequest request ) {
		Account account=(Account) request.getSession().getAttribute(CommonConst.SESSION_ACCOUNT);
		if(account==null) {
			return new ModelAndView("redirect:loginpage");
		}else if(account.getRole()==CommonConst.LEVEL_FREELANCER) {
			return new ModelAndView("redirect:index");
		}
		ModelAndView model = new ModelAndView("create-job");
		model.addObject("listMajors", MajorDAO.getAll());
		return model;
	}
	@RequestMapping (value="/jobs")
	public ModelAndView listJobPage() {
		ModelAndView model = new ModelAndView("jobs");

		return model;
	}
	

	@RequestMapping(value = "/createjob", method = RequestMethod.POST)
	@ResponseBody
	public String createJob(@ModelAttribute("formcreatejob") FormCreateJob formCreateJob, HttpServletRequest request) {
		Account acc = (Account) request.getSession().getAttribute(CommonConst.SESSION_ACCOUNT);
		System.out.println(formCreateJob);
		MultipartFile img = formCreateJob.getImg();
		String jobname = formCreateJob.getJobname();
		String ls_province = formCreateJob.getLs_province();
		String finishday = formCreateJob.getFinishday();
		String jobdescription = formCreateJob.getJobdescription();
		String education = formCreateJob.getEducation();
		String exp = formCreateJob.getExp();
		String language = formCreateJob.getLanguage();
		int major = formCreateJob.getMajor();
		int jobtype = formCreateJob.getJobtype();
		int quantity = formCreateJob.getQuantity();
		List<String> toCheckNull = new ArrayList<String>();
		toCheckNull.add(jobname);
		toCheckNull.add(ls_province);
		toCheckNull.add(finishday);
		toCheckNull.add(jobdescription);
		toCheckNull.add(education);
		toCheckNull.add(exp);
		toCheckNull.add(language);
		if (StringHelper.isListStringNull(toCheckNull) || major == 0 || quantity == 0 || jobtype == 0 || img == null
				|| img.isEmpty()) {
			return "empty";
		} else {
			if (!JobDAO.insert(formCreateJob, acc.getId())) {
				return "fail";
			} else {
				return "ok";
			}
		}
	}

}
