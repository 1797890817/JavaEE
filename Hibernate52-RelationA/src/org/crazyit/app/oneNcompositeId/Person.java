package org.crazyit.app.oneNcompositeId;

import java.util.*;

import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;

/**
 * Description: <br/>
 * 网站: <a href="http://www.crazyit.org">疯狂Java联盟</a> <br/>
 * Copyright (C), 2001-2016, Yeeku.H.Lee <br/>
 * This program is protected by copyright laws. <br/>
 * Program Name: <br/>
 * Date:
 * 
 * @author Yeeku.H.Lee kongyeeku@163.com
 * @version 1.0
 */
@Entity
@Table(name = "person_inf")
@Getter
@Setter
public class Person implements java.io.Serializable {
	/**
	 * 原代码没有此字段！
	 */
	private static final long serialVersionUID = 1L;
	// 定义first成员变量，作为标识属性的成员
	@Id
	private String first;
	// 定义last成员变量，作为标识属性的成员
	@Id
	private String last;
	private int age;
	// 记录该Person实体关联的所有Address实体
	@OneToMany(targetEntity = Address.class, mappedBy = "person", cascade = CascadeType.ALL)
	private Set<Address> addresses = new HashSet<>();

	// 重写equals()方法，根据first、last进行判断
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj != null && obj.getClass() == Person.class) {
			Person target = (Person) obj;
			return target.getFirst().equals(this.first) && target.getLast().equals(this.last);
		}
		return false;
	}

	// 重写hashCode()方法，根据first、last计算hashCode值
	public int hashCode() {
		return getFirst().hashCode() * 31 + getLast().hashCode();
	}
}