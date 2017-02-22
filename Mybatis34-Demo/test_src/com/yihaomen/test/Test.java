package com.yihaomen.test;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.yihaomen.mybatis.inter.IUserOperation;
import com.yihaomen.mybatis.model.User;

public class Test {
	private static SqlSessionFactory sqlSessionFactory;
	private static Reader reader;

	static {
		try {
			reader = Resources.getResourceAsReader("Configuration.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static SqlSessionFactory getSession() {
		return sqlSessionFactory;
	}

	public static void main(String[] args) {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			//User user = (User) session.selectOne("com.yihaomen.mybatis.models.UserMapper.selectUserByID", 1);
			IUserOperation userOperation=session.getMapper(IUserOperation.class);	//使用接口
			User user = userOperation.selectUserByID(1);
			System.out.println(user.getUserAddress());
			System.out.println(user.getUserName());
		} finally {
			session.close();
		}
	}
}