package source.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import config.CommonConst;
import customutil.StringHelper;
import database.AccountDAO;
import model.Account;

@Controller
public class AccountController {

	@RequestMapping(value = "/login", method = RequestMethod.POST, params = { "username", "password" })
	@ResponseBody
	public String login(HttpServletRequest request, @RequestParam("username") String username,
			@RequestParam("password") String password) {
		if (!AccountDAO.checkLogin(username, password)) {
			return "error";
		} else {
			int id = AccountDAO.getIdAccByUsername(username);
			Account acc = AccountDAO.getUserById(id);
			System.out.println(acc.getId());
			request.getSession().setAttribute(CommonConst.SESSION_ACCOUNT, acc);
			return "success";
		}
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST, params = { "fullnamenew", "emailnew",
			"usernamenew", "passwordnew" })
	@ResponseBody
	public String register(HttpServletRequest request, @RequestParam("fullnamenew") String fullnamenew,
			@RequestParam("emailnew") String emailnew, @RequestParam("usernamenew") String usernamenew,
			@RequestParam("passwordnew") String passwordnew) {
		List<String> toCheck = new ArrayList<>();
		toCheck.add(fullnamenew);
		toCheck.add(emailnew);
		toCheck.add(usernamenew);
		toCheck.add(passwordnew);
		if (request.getSession().getAttribute(CommonConst.SESSION_ACCOUNT) != null) {
			return "manbo";
		} else if (StringHelper.isListStringNull(toCheck)) {
			return "erremptyfield";
		} else if (!Account.validName(fullnamenew)) {
			return "errname";
		} else if (!Account.validPassword(passwordnew)) {
			return "errpass";
		} else if (!Account.validUsername(usernamenew)) {
			return "errusername";
		} else if (AccountDAO.isUsernameExists(usernamenew)) {
			return "errusernameexit";
		} else if (!Account.validEmail(emailnew)) {
			return "errmail";
		} else if (!AccountDAO.addAccountByRegister(usernamenew, passwordnew, fullnamenew, emailnew)) {
			return "error";
		} else {
			Account account = new Account();
			account.setFullname(fullnamenew);
			account.setUsername(usernamenew);
			account.setPassword(passwordnew);
			account.setEmail(emailnew);
			account.setId(AccountDAO.getIdAccByUsername(usernamenew));
			request.getSession().setAttribute(CommonConst.SESSION_ACCOUNT, account);
			return "success";
		}
	}

}
