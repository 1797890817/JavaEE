package com.ddb.struts2.ognlvaluestack;

import lombok.Getter;
import lombok.Setter;

@Getter@Setter
public class Student {
	private String name;
	private int score;

	public Student(String name, int score) {
		super();
		this.name = name;
		this.score = score;
	}
}
