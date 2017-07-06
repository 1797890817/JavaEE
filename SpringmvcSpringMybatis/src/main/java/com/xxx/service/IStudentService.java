package com.xxx.service;

import java.util.List;

import com.xxx.model.Student;

public interface IStudentService {
	// 新增学生的接口
	boolean insert(Student student);

	// 更新学生
	boolean update(Student student);

	// 删除学生
	boolean delete(List<Integer> ids);

	// 使用id去获取
	Student getOne(Integer id);

	// 获取所有Student
	List<Student> getAllStudents();

}
