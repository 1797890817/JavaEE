package com.xxx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xxx.dao.StudentMapper;
import com.xxx.model.Student;
import com.xxx.service.IStudentService;

@Service
public class StudentServiceImpl implements IStudentService {
	// 注入DAO层组件
	@Autowired
	private StudentMapper studentMapper;

	@Override
	public boolean insert(Student student) {
		System.out.println("in student service insert...:"+student);
		studentMapper.insert(student);
		return true;
	}

	@Override
	public boolean update(Student student) {
		studentMapper.updateByPrimaryKey(student);
		return false;
	}

	@Override
	public boolean delete(List<Integer> ids) {
		studentMapper.deleteByIds(ids);
		return true;
	}

	@Override
	public Student getOne(Integer id) {
		Student student = studentMapper.selectByPrimaryKey(id);
		return student;
	}

	@Override
	public List<Student> getAllStudents() {
		List<Student> list = studentMapper.selectAll();
		return list;
	}

}
