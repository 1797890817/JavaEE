package org.crazyit.app.componentEntity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Parent;

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
@Embeddable
@Getter
@Setter
public class Address {
	// 代表地址详细信息的成员变量
	@Column(name = "address_detail")
	private String addressDetail;
	// 定义该组件属性所在的包含实体
	@Parent
	private Person person;
	// 定义保留关联实体的Set集合
	@OneToMany(targetEntity = School.class)
	// 映射外键列，此处告诉Hibernate在School实体对应的表中增加外键列
	// 该外键列的列名为address_id，参照person_inf表的peron_id主键列
	@JoinColumn(name = "address_id", referencedColumnName = "person_id")	//此处和以前并不一样，两个属性值不一样了！
	private Set<School> schools = new HashSet<>();

	public Address() {
	}

	public Address(String addressDetail) {
		this.addressDetail = addressDetail;
	}

}