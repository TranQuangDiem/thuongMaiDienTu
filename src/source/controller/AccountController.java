package source.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class AccountController {

	@RequestMapping(value="/login", method=RequestMethod.POST, params = { "username","password" })
	@ResponseBody
	public String login(HttpServletRequest request,
			@RequestParam("username") String username, 
			@RequestParam("password") String password ) {
		
		return "Error";
	}

	
}
