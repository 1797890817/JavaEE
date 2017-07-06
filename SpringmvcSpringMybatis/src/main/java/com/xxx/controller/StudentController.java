package com.xxx.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.xxx.model.Student;
import com.xxx.service.IStudentService;

@Controller
@RequestMapping("/student")
public class StudentController {

	// 自动注入需要的Service组件
	@Autowired
	private IStudentService studentService;

	// 添加学生的方法
	@RequestMapping(value = "/add", method = { RequestMethod.GET, RequestMethod.POST })
	public String addStudent(HttpServletRequest request, HttpServletResponse response, Student student)
			throws IOException {
		System.out.println("in add...");
		studentService.insert(student);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("student/studentMain");
		response.sendRedirect("student/home");
		// return "redirect:student/home";
		// return mv;
		return null;
	}

	// 更新学生的方法
	@RequestMapping(value = "/mod", method = { RequestMethod.GET, RequestMethod.POST })
	public String modStudent(HttpServletRequest request, HttpServletResponse response, Student student) {
		System.out.println("in mod...");
		studentService.update(student);
		return "student/studentMain";
	}

	// 删除学生的方法--通过id
	@RequestMapping(value = "/del/{id}", method = { RequestMethod.GET, RequestMethod.POST })
	public String delStudentByIds(HttpServletRequest request, HttpServletResponse response,@PathVariable Integer id) {
		System.out.println("in del by id...");
		System.out.println("id=" + id);
		List<Integer> ids =new ArrayList<Integer>();
		ids.add(id);
		studentService.delete(ids);
		return "student/studentMain";
	}
	
	// 删除学生的方法
	@RequestMapping(value = "/del", method = { RequestMethod.GET, RequestMethod.POST })
	public String delStudentByIds(HttpServletRequest request, HttpServletResponse response, List<Integer> ids) {
		System.out.println("in del...");
		System.out.println("ids=" + ids);
		
		return "forward:/student/getall";
	}

	// 获取学生的方法
	@RequestMapping(value = "/getone/{id}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView getStudentById(HttpServletRequest request, HttpServletResponse response,
			@PathVariable Integer id) {
		System.out.println("in getone:请求数据的ID=" + id);
		Student student = studentService.getOne(id);
		System.out.println(student.getStuName());
		ModelAndView mv = new ModelAndView();
		mv.addObject("stu", student);
		mv.setViewName("student/studentMod");
		return mv;
	}

	// 获取单个学生的方法
	@RequestMapping(value = "/getall", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView getAllStudents(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("in getAll...");
		List<Student> list = studentService.getAllStudents();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("student/studentMain");
		return mv;
	}

	// 返回到Student的主页面
	@RequestMapping("/home")
	public ModelAndView toMainPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("student/studentMain");
		return mv;
	}

}
