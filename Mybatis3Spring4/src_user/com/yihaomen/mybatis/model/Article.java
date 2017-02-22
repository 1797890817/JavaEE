package com.yihaomen.mybatis.model;

import lombok.Getter;
import lombok.Setter;

@Getter@Setter
public class Article {
	private int id;
	private User user;
	private String title;
	private String content;
}
