package com.xxx.controller.valueobject;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import lombok.Getter;
import lombok.Setter;

import org.springframework.stereotype.Component;

/**
 * 影院店铺信息vo
 * 
 * @author author
 * @date 2016/02/16
 */
@Component
@JsonSerialize
@Getter
@Setter
public class ShopInfoVO {

	private Integer id;
	private String shopNo;
	private String shopName;
	private String shopType;
	private String shopPassword;
	private String note;

}
