package com.xxx.model;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

/**
 * 影院店铺信息表
 * 
 * @author author
 * @date 2016/02/16
 */
@Setter
@Getter
public class SmiShopInfo implements Serializable {

	private static final long serialVersionUID = -205189814706545519L;

	private Integer id;

	private String shopNo;

	private String shopName;

	private String shopType;

	private String shopPassword;

	private String note;

}
