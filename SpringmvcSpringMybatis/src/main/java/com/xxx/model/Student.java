package com.xxx.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Student {

	private Integer id;
	private Integer stuId;
	private String stuName;
	private Byte stuSex;
	
	@Override
	public String toString() {
		return "Student [id=" + id + ", stuId=" + stuId + ", stuName=" + stuName + ", stuSex=" + stuSex + "]";
	}
	
	

}