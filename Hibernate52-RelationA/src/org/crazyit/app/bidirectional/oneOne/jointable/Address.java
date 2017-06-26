package org.crazyit.app.bidirectional.oneOne.jointable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

/**
 * Description: <br/>
 * ��վ: <a href="http://www.crazyit.org">���Java����</a> <br/>
 * Copyright (C), 2001-2016, Yeeku.H.Lee <br/>
 * This program is protected by copyright laws. <br/>
 * Program Name: <br/>
 * Date:
 * 
 * @author Yeeku.H.Lee kongyeeku@163.com
 * @version 1.0
 */
@Entity
@Table(name = "address_inf")
@Getter@Setter
public class Address {
	// ��ʶ����
	@Id
	@Column(name = "address_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int addressId;
	// �����ַ��ϸ��Ϣ�ĳ�Ա����
	private String addressDetail;
	// �����Addressʵ�������Personʵ��
	@OneToOne(targetEntity = Person.class)
	// ӳ��ײ����ӱ�����Ϊperson_address
	@JoinTable(name = "person_address",
			// ӳ�����ӱ������У�����unique=true������1-1����
			joinColumns = @JoinColumn(name = "address_id", referencedColumnName = "address_id", unique = true),
			// ӳ�����ӱ������У�����unique=true������1-1����
			inverseJoinColumns = @JoinColumn(name = "person_id", referencedColumnName = "person_id", unique = true))
	private Person person;

	// �޲����Ĺ�����
	public Address() {
	}

	// ��ʼ��ȫ����Ա�����Ĺ�����
	public Address(String addressDetail) {
		this.addressDetail = addressDetail;
	}
}