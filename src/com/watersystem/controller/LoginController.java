package com.watersystem.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.watersystem.po.user;
import com.watersystem.service.userService;

@Controller
public class LoginController {
	@Autowired 
	private userService userService;

	@RequestMapping(value="/login")
	public String login(HttpServletRequest request,Model model) throws Exception{
		model.addAttribute("error1", request.getAttribute("error"));
		return "Login";
	}
	
	
	@RequestMapping(value="/LoginValidate")
	public String LoginValidate(String username,String password,HttpServletRequest request,HttpSession session) throws Exception
	{
	user user= userService.findUserByName(username);
	session.setAttribute("User", user);
	if (username.equals(user.getUsername())&&password.equals(user.getPassword())) {
	
	return "Success";	
	}
	else {
		
	 request.setAttribute("error", "密码不正确");
		return "forward:login";
	}
		

	}
	
	
	
	@RequestMapping(value="/logout")
	public String Logout(HttpSession session) 
	{
		session.invalidate();
		return "Login";
		
	}
}
