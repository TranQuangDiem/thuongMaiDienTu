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
import customutil.MailHandler;
import customutil.StringHelper;
import database.AccountDAO;
import database.ForgotPasswordDAO;
import model.Account;

@Controller
public class AccountController {

	@RequestMapping(value = "/loginpage")
	public String loginPage() {
		return "login";
	}

	@RequestMapping(value = "/registerpage")
	public String registerPage() {
		return "signup";
	}

	@RequestMapping(value = "/lostpasswordpage")
	public String lostpasswordPage() {
		return "lost-password";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST, params = { "username", "password" })
	@ResponseBody
	public String login(HttpServletRequest request, @RequestParam("username") String username,
			@RequestParam("password") String password) {
		if (!AccountDAO.checkLogin(username, password)) {
			return "error";
		} else {
			int id = AccountDAO.getIdAccByUsername(username);
			Account acc = AccountDAO.getUserById(id);
			request.getSession().setAttribute(CommonConst.SESSION_ACCOUNT, acc);
			return "success";
		}
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST, params = { "fullnamenew", "emailnew",
			"usernamenew", "passwordnew" })
	@ResponseBody
	public String register(HttpServletRequest request, @RequestParam("fullnamenew") String fullnamenew,
			@RequestParam("emailnew") String emailnew, @RequestParam("usernamenew") String usernamenew,
			@RequestParam("passwordnew") String passwordnew, @RequestParam("role-new") String rolenew) {
		List<String> toCheck = new ArrayList<>();
		toCheck.add(fullnamenew);
		toCheck.add(emailnew);
		toCheck.add(usernamenew);
		toCheck.add(passwordnew);
		toCheck.add(rolenew);
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
		} else if (AccountDAO.isEmailExists(emailnew)) {
			return "errmailexist";
		} else if (!AccountDAO.addAccountByRegister(usernamenew, passwordnew, fullnamenew, emailnew,
				Integer.parseInt(rolenew))) {
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

	@RequestMapping(method = RequestMethod.POST, value = "/getlostpassword")
	@ResponseBody
	public String getLostPassword(@RequestParam String email) {
		if (!AccountDAO.isEmailExists(email)) {
			return "notexists";
		} else {
			try {
				int id=AccountDAO.getIdByEmail(email);
				StringBuilder sb = new StringBuilder(ForgotPasswordDAO.insert(id));
				String key=sb.toString();
				if (key.equals("")) {
					return "fail";
				} else {
					String content = "Mật khẩu hiện tại của bạn là: " + key;
					MailHandler.sendEmail(email, "Quên Mật Khẩu", content);
					AccountDAO.updatePassword(key,id );
					return "ok";
				}
			} catch (Exception e) {
				e.printStackTrace();
				return "fail";
			}
		}
	}

}
