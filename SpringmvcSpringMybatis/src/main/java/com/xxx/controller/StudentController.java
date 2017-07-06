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
	public ModelAndView addStudent(HttpServletRequest request, HttpServletResponse response, Student student)
			throws IOException {
		System.out.println("in add...");
		studentService.insert(student);
		//重新获取数据
		ModelAndView mv = toStudentHomePage();
		return mv;
	}
	
	// 更新学生的方法
	@RequestMapping(value = "/mod", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView modStudent(HttpServletRequest request, HttpServletResponse response, Student student) {
		System.out.println("in mod...");
		studentService.update(student);
		return toStudentHomePage();
	}

	// 删除学生的方法--通过id
	@RequestMapping(value = "/del/{id}", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView delStudentByIds(HttpServletRequest request, HttpServletResponse response,@PathVariable Integer id) {
		System.out.println("in del by id... id=" + id);
		List<Integer> ids =new ArrayList<Integer>();
		ids.add(id);
		studentService.delete(ids);
		
		return toStudentHomePage();
	}
	
	// 删除学生的方法
	@RequestMapping(value = "/del", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView delStudentByIds(HttpServletRequest request, HttpServletResponse response, List<Integer> ids) {
		System.out.println("in del... ids=" + ids);
		studentService.delete(ids);
		return toStudentHomePage();
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
	public ModelAndView getAllStus(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("in getAll...");
		
		return toStudentHomePage();
	}

	private ModelAndView toStudentHomePage() {
		ModelAndView mv =new ModelAndView();
		List<Student> list= studentService.getAllStudents();
		mv.addObject("list", list);
		mv.setViewName("student/studentMain");
		return mv;
	}

}
