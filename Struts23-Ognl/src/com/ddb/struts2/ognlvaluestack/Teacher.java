package com.ddb.struts2.ognlvaluestack;

import lombok.Getter;
import lombok.Setter;

@Getter@Setter
public class Teacher {
	private String name;
	private int salary;
	
	public Teacher(String name, int salary) {
		super();
		this.name = name;
		this.salary = salary;
	}

	@Override
	public String toString() {
		return this.name+":"+this.salary;
	}
}
