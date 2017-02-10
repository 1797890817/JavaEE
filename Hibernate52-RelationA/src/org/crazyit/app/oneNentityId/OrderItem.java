package org.crazyit.app.oneNentityId;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

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
@Table(name = "order_item_inf")
@Getter
@Setter
public class OrderItem implements java.io.Serializable {
	/**
	 * 原源代码中没有这个字段！
	 */
	private static final long serialVersionUID = 1L;
	// 下面3个属性将作为联合主键
	// 定义关联的Order实体
	@ManyToOne(targetEntity = Order.class)
	// 映射名为order_id的外键列，参照order_inf的order_id主键列
	@JoinColumn(name = "order_id", referencedColumnName = "order_id")
	@Id
	private Order order;
	// 定义关联的Product实体
	@ManyToOne(targetEntity = Product.class)
	// 映射名为product_id的外键列，参照product_inf的product_id主键列
	@JoinColumn(name = "product_id", referencedColumnName = "product_id")
	@Id
	private Product product;
	// 该订单项订购的产品数量
	@Id
	private int count;

	// 无参数的构造器
	public OrderItem() {
	}

	// 初始化全部成员变量的构造器
	public OrderItem(Order order, Product product, int count) {
		this.order = order;
		this.product = product;
		this.count = count;
	}

	// 重写equals()方法，根据product、order、count判断是否相等
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj != null && obj.getClass() == OrderItem.class) {
			OrderItem target = (OrderItem) obj;
			return this.order.equals(target.getOrder()) && this.product.equals(target.getProduct())
					&& this.count == target.getCount();
		}
		return false;
	}

	// 重写hashCode()方法，根据product、order、count计算hashCode值
	public int hashCode() {
		return (this.product == null ? 0 : this.product.hashCode()) * 31 * 31
				+ (this.order == null ? 0 : this.order.hashCode()) * 31 + this.count;
	}
}