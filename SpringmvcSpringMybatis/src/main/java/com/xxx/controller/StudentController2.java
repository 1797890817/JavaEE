package com.xxx.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xxx.controller.valueobject.RequestObject;
import com.xxx.controller.valueobject.ResultObject;
import com.xxx.model.Student;
import com.xxx.service.IStudentService;

@Controller
@RequestMapping("/student")
public class StudentController2 { // 这个控制器是处理异步请求的方式

	// 自动注入需要的Service组件
	@Autowired
	private IStudentService studentService;

	// 添加、更新学生的方法
	@RequestMapping(value = "/addOrmod", method = { RequestMethod.GET, RequestMethod.POST })
	public @ResponseBody ResultObject modStudent(HttpServletRequest request, HttpServletResponse response,
			@RequestBody Student student) {
		System.out.println("in addOrmod...");
		ResultObject ro = new ResultObject();
		if (null == student || null == student.getStuId()) {
			return ro;
		}

		System.out.println("student :" + student);
		if (student.getId() == null) {
			System.out.println("执行数据插入");
			studentService.insert(student);
		} else {
			System.out.println("执行数据更新");
			studentService.update(student);
		}
		ro.setResult("ok");
		return ro;
	}

	// 删除学生的方法
	@RequestMapping(value = "/del", method = { RequestMethod.GET, RequestMethod.POST })
	public @ResponseBody ResultObject delStudentByIds(HttpServletRequest request, HttpServletResponse response,
			@RequestBody RequestObject requestObject) {
		ResultObject resultObject = new ResultObject();
		System.out.println("in del... ids=" + requestObject.getIds());
		String[] ids = requestObject.getIds().split(",");
		// 将String的数组转换为list
		if (null != ids) {
			List<Integer> list = new ArrayList<Integer>();
			for (int i = 0; i < ids.length; i++) {
				list.add(Integer.parseInt(ids[i]));
			}
			studentService.delete(list);
		}
		resultObject.setResult("数据删除成功！");
		return resultObject;
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

	// 获取所有学生的方法
	@RequestMapping(value = "/getall", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public List<Student> getAllStus(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("in getAll...");
		List<Student> list = studentService.getAllStudents();
		return list;
	}

	private ModelAndView toStudentHomePage() {
		ModelAndView mv = new ModelAndView();
		List<Student> list = studentService.getAllStudents();
		mv.addObject("list", list);
		mv.setViewName("student/studentMain");
		return mv;
	}

}
