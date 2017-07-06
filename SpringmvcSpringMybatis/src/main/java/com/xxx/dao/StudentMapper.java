package com.xxx.dao;

import com.xxx.model.Student;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface StudentMapper {
	int deleteByIds(@Param("ids") List<Integer> ids);

	int deleteByPrimaryKey(Integer id);

	int insert(Student record);

	Student selectByPrimaryKey(Integer id);

	List<Student> selectAll();

	int updateByPrimaryKey(Student record);
}