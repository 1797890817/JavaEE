package com.ddb.spring.c3po;

import javax.sql.DataSource;
import java.sql.*;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class C3P0Test
{
	private static ApplicationContext ctx;

	public static void main(String[] args)
		throws Exception
	{
		ctx = new ClassPathXmlApplicationContext("beans.xml");
		// 获取容器中id为dataSource的Bean
		DataSource ds = ctx.getBean("dataSource", DataSource.class);
		// 通过DataSource来获取数据库连接
		Connection conn = ds.getConnection();
		// 通过数据库连接获取PreparedStatement
		PreparedStatement pstmt = conn.prepareStatement(
			"insert into news_inf values(null , ? , ?)");
		pstmt.setString(1 , "Java进度");
		pstmt.setString(2 , "Java学习进入JavaEE阶段");
		// 执行SQL语句
		pstmt.executeUpdate();
		// 清理资源，回收数据库连接资源。
		if (pstmt != null)pstmt.close();
		if (conn != null)conn.close();
	}
}