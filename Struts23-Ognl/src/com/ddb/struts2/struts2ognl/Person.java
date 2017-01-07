package com.ddb.struts2.struts2ognl;

import java.util.List;
import java.util.Map;

import lombok.Getter;
import lombok.Setter;

@Getter@Setter
public class Person {
	private String name;
	private int age;
	private float salary;

	private Address address;
	private String[] aliases;
	private List<String> emails;
	private Map<String, String> phones;
	
	public Person() {
		super();
	}

	public Person(String name, int age, float salary, Address address,
			String[] aliases, List<String> emails, Map<String, String> phones) {
		super();
		this.name = name;
		this.age = age;
		this.salary = salary;
		this.address = address;
		this.aliases = aliases;
		this.emails = emails;
		this.phones = phones;
	}
}
