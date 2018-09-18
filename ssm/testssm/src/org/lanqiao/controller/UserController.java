package org.lanqiao.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.lanqiao.entity.Student;
import org.lanqiao.entity.User;
import org.lanqiao.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	@Resource
	private UserService userService;
	
	@RequestMapping("/login")
	public String login(User user,HttpServletRequest request){
		User resultUser=userService.login(user);
		if(resultUser==null){
			request.setAttribute("user", user);
			request.setAttribute("errorMsg", "用户名或密码错误");
			return "login";
		}else{
			HttpSession session=request.getSession();
			session.setAttribute("currentUser", resultUser);
			return "success";
		}
	}
	
	@RequestMapping("/show")
	public String show(){
		return "ck";
	}
	
	@RequestMapping("/add")
	public String addStudent(Student student , Model model){
		System.out.println(student);
		model.addAttribute("student", student);
		return "ck2";	
	}
}
