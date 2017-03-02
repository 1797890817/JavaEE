package com.yue.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yue.entity.User;
import com.yue.service.UserService;

@Controller
public class TestController {
	
	private static Logger log = Logger.getLogger(TestController.class);

	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/index")
	public String index(){
		return "index";
	}
	
	@ResponseBody
	@RequestMapping(value="/json")
	public List<String> json() {
		List<String> list = new ArrayList<String>();
		for (int i = 0; i<10; i++){
			list.add("xxxxxx" + i);
		}
		return list;
	}
	
	@ResponseBody
	@RequestMapping("/save")
	public User saveUser() {
		log.warn("访问--------------------" + TestController.class.getResource("/"));
		User user = new User();
		user.setUsername("mengxy");
		user.setPassword("mengxy");
		this.userService.saveUser(user);
		return user;
	}
	@ResponseBody
	@RequestMapping("/findbyid/{id}")
	public User findById(@PathVariable long id){
		return this.userService.findUserById(id);
	}
	
	@ResponseBody
	@RequestMapping("/findbyusername/{username}")
	public List<User> findByUsername(@PathVariable String username){
		System.out.println("In findByUsername");
		return this.userService.findUserByUsername(username);
	}
	
	@ResponseBody
	@RequestMapping("/findbypassword/{password}")
	public List<User> findByPassword(@PathVariable String password){
		System.out.println("In findByPassword!");
		return this.userService.findUserByPassword(password);
	}
}
