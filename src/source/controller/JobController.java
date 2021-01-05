package source.controller;

import java.io.File;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sun.mail.util.logging.MailHandler;

import config.CommonConst;
import customutil.MyMailHandler;
import customutil.StringHelper;
import database.AccountDAO;
import database.JobDAO;
import database.MajorDAO;
import dataform.FormCreateJob;
import model.Account;
import model.Job;

@Controller
public class JobController {

	@RequestMapping(value = "/create-job")
	public ModelAndView createJobPage(HttpServletRequest request) {
		Account account = (Account) request.getSession().getAttribute(CommonConst.SESSION_ACCOUNT);
		if (account == null) {
			return new ModelAndView("redirect:loginpage");
		} else if (account.getRole() == CommonConst.LEVEL_FREELANCER) {
			return new ModelAndView("redirect:index");
		}
		ModelAndView model = new ModelAndView("create-job");
		model.addObject("listMajors", MajorDAO.getAll());
		return model;
	}

	@RequestMapping(value = "/jobs")
	public ModelAndView listJobPage(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "jobtitle", required = false, defaultValue = "") String jobtitle,
			@RequestParam(value = "province", required = false, defaultValue = "") String province,
			@RequestParam(value = "major", required = false, defaultValue = "0") int major,
			@RequestParam(value = "sortby", required = false, defaultValue = "0") int sortby,
			@RequestParam(value = "sortorder", required = false, defaultValue = "0") int sortorder) {
		int itemInOnePage = 10;
		/** CREATE QUERY */
		StringBuilder querySELECT = new StringBuilder(
				"SELECT job.id,job.tencongviec,job.chitiet,job.idAccount,job.img,job.soluongtuyen,job.ngaydang,job.finishday,job.`view`,job.major,job.`language`,job.exp,job.education,job.`status`,job.city,job.jobtype,account.fullname,account.`name`  FROM job JOIN account ON job.idAccount=account.id ");
		/** SEARCH */
		StringBuilder queryWHERE = new StringBuilder("WHERE  job.`status`=1 AND finishday >= (SELECT CURDATE())");
		StringBuilder queryORDER = new StringBuilder("");
		if (!StringHelper.isStringNull(province)) {
			queryWHERE.append(" ");
			queryWHERE.append("AND job.city='" + province + "'");
			queryWHERE.append(" ");
		}
		if (major != 0) {
			queryWHERE.append(" ");
			queryWHERE.append("AND job.major='" + MajorDAO.getById(major).getName() + "'");
			queryWHERE.append(" ");
		}
		if (!StringHelper.isStringNull(jobtitle)) {
			queryWHERE.append(" ");
			queryWHERE.append("AND job.tencongviec LIKE ?");
			queryWHERE.append(" ");
		}
		/** SORT */
		if (sortby != 0 || sortorder != 0) {
			if (sortby != 0) {
				if (sortby == 1)
					queryORDER.append(" " + "ORDER BY job.view" + " ");
				if (sortby == 2)
					queryORDER.append(" " + "ORDER BY job.ngaydang" + " ");
				if (sortby == 3)
					queryORDER.append(" " + "ORDER BY job.finishday" + " ");
			}
			if (sortorder != 0) {
				if (sortorder == 1)
					queryORDER.append(" " + "ASC" + " ");
				if (sortorder == 2)
					queryORDER.append(" " + "DESC" + " ");
			}
		}
		/** GET RECORDS */

		int totalRecords = JobDAO.getTotalRecords(queryWHERE.toString(), jobtitle);

		/** CREATE LIST */
		String query = querySELECT.toString() + queryWHERE.toString() + queryORDER.toString() + " LIMIT ?,? ";
		ModelAndView model = new ModelAndView("jobs");
		model.addObject("listMajors", MajorDAO.getAll());
		model.addObject("listJobs", JobDAO.getAllJobIsOpenWithPage(page, itemInOnePage, query, jobtitle));
		model.addObject("numberJobIsOpen", JobDAO.numberJobIsOpen());
		/** HANDLE PAGE */
		int totalPages = (int) Math.ceil((double) totalRecords / itemInOnePage);
		int pageIndex = page;
		int maxPage = 5;
		int startPageIndex = Math.max(1, pageIndex - maxPage / 2);
		int endPageIndex = Math.min(totalPages, pageIndex + maxPage / 2);
		model.addObject("totalRecords", totalRecords);
		model.addObject("pageIndex", pageIndex);
		model.addObject("maxPage", maxPage);
		model.addObject("totalPage", totalPages);
		model.addObject("fristPage", 1);
		model.addObject("lastPage", totalPages);
		model.addObject("nextPage", pageIndex == totalPages ? -1 : pageIndex + 1);
		model.addObject("previousPage", pageIndex == 1 ? -1 : pageIndex - 1);
		model.addObject("startPageIndex", startPageIndex);
		model.addObject("endPageIndex", endPageIndex);
		model.addObject("jobtitle", StringHelper.isStringNull(jobtitle) ? "" : jobtitle);
		model.addObject("province", StringHelper.isStringNull(province) ? "" : province);
		model.addObject("major", major == 0 ? "" : major);
		model.addObject("sortby", sortby == 0 ? "" : sortby);
		model.addObject("sortorder", sortorder == 0 ? "" : sortorder);
		/** DEBUG */
//		System.out.println(totalRecords);
//		System.out.println(query);
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
		if (acc == null) {
			return "user";
		} else if (StringHelper.isListStringNull(toCheckNull) || major == 0 || quantity == 0 || jobtype == 0
				|| img == null || img.isEmpty()) {
			return "empty";
		} else if (!JobDAO.canPostJob(acc.getId())) {
			return "money";
		} else {
			int rs = JobDAO.insert(formCreateJob, acc.getId());
			if (rs < 0) {
				return "fail";
			} else {
				String urlDetailJob = "http://"+request.getServerName() + ":" + request.getServerPort()
						+ request.getContextPath() + "/job-apply-detail?id_job=" + rs;
				String nameMajor = MajorDAO.getById(formCreateJob.getMajor()).getName();
				String[] to=AccountDAO.getEmailsByMajor(nameMajor);
				if (to!=null ||to[0]!=null ) {
					MyMailHandler.sendMailMultiRecipients(to,
							"Có 1 công việc mới đang chờ bạn trên JobStock",
							StringHelper.htmlEmailWelJob(rs, urlDetailJob));
				}
				
				return "ok";
			}
		}
	}

}
