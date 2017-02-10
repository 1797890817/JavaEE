package org.crazyit.app.oneNentityId;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
/**
 * Description:
 * <br/>网站: <a href="http://www.crazyit.org">疯狂Java联盟</a>
 * <br/>Copyright (C), 2001-2016, Yeeku.H.Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Yeeku.H.Lee kongyeeku@163.com
 * @version  1.0
 */

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "order_inf")
@Getter
@Setter
public class Order {
	// 定义标识属性
	@Id
	@Column(name = "order_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer orderId;
	private Date orderDate;
	// 关联的的订单项
	@OneToMany(targetEntity = OrderItem.class, mappedBy = "order")
	private Set<OrderItem> items = new HashSet<>();

	// 无参数的构造器
	public Order() {
	}

	// 初始化全部成员变量的构造器
	public Order(Date orderDate) {
		this.orderDate = orderDate;
	}

}