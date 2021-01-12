package source.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import database.AccountDAO;
import database.JobDAO;
import database.UtilDataBase;
import model.Account;
import model.Job;




@Controller
public class AdminManagerAccountController {
	@RequestMapping(value = "/admin-manager-freelancer")
	public ModelAndView adminManagerFreelancer(@RequestParam(value = "page", required = false, defaultValue = "1") int page) {
		ModelAndView model = new ModelAndView("admin/manager-freelancer");
		
		/** HANDLE PAGE */
		int totalRecords = AccountDAO.getTotalRecordsFreelancer();
		int itemInOnePage = 10;
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
		/** MAIN MODEL */
		model.addObject("listAccounts", AccountDAO.getListAccountsFreelancerWithPage(page, itemInOnePage, ""));
		return model;
	}
	@RequestMapping(value = "/admin-manager-employer")
	public ModelAndView adminManagerEmployer(@RequestParam(value = "page", required = false, defaultValue = "1") int page) {
		ModelAndView model = new ModelAndView("admin/manager-employer");
		
		/** HANDLE PAGE */
		int totalRecords = AccountDAO.getTotalRecordsEmployer();
		int itemInOnePage = 10;
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
		/** MAIN MODEL */
		model.addObject("listAccounts", AccountDAO.getListAccountsEmployerWithPage(page, itemInOnePage,  ""));
		
		return model;
	}
	
	@RequestMapping(value = "/admin-edit-employer")
	public ModelAndView detailJobPost(@RequestParam(value = "id") int id) {

		ModelAndView model = new ModelAndView("admin/edit-employer");
		Account acc = UtilDataBase.getAccount(id);
		if (acc == null) {
			model.setViewName("redirect:/admin-index");
		} else {
			model.addObject("account", acc);
		}
		return model;
	}
	@RequestMapping(value = "/admin-edit-freelancer")
	public ModelAndView editFreelancer(@RequestParam(value = "id") int id) {

		ModelAndView model = new ModelAndView("admin/edit-freelancer");
		Account acc = UtilDataBase.getAccount(id);
		if (acc == null) {
			model.setViewName("redirect:/admin-index");
		} else {
			model.addObject("account", acc);
		}
		return model;
	}
	
}
