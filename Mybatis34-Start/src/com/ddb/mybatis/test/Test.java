package com.ddb.mybatis.test;

import java.io.InputStream;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.ddb.mybatis.domain.UserInfo;

public class Test {
	//mybatis配置文件
	private static final String resource = "mybatis-config.xml";
	//SqlSession对象
	private SqlSession session = null;
		
	/**
	 * 初始化配置文件，并创建SqlSession对象
	 * @throws Exception
	 */
	public void init()throws Exception{
		//读取mybatis配置文件
		Reader reader = Resources.getResourceAsReader(resource);
		//创建mybatis的session工厂对象
		SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		//返回session会话
		session = sessionFactory.openSession();
	}
	public void init2()throws Exception{
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
		SqlSessionFactory factory = builder.build(inputStream);
		session = factory.openSession();
	}
	
	/**
	 * 插入操作
	 * @param userInfo
	 * @return
	 */
	public int insert(UserInfo userInfo){
		int id = session.insert("insertUserInfo", userInfo);
		session.commit();
		return id;
	}
	
	/**
	 * 更新操作
	 * @param id
	 * @return
	 */
	public int update(UserInfo userInfo){
		int id = session.update("updateUserInfo", userInfo);
		session.commit();
		return id;
	}

	/**
	 * 删除操作
	 * @param id
	 * @return
	 */
	public int delete(int id){
		int idx = session.delete("deleteUserInfo", id);
		session.commit();
		return idx;
	}
	
	/**
	 * 获取单个对象
	 * @param id
	 * @return
	 */
	public UserInfo getOne(int id){
		UserInfo userInfo = session.selectOne("getUserInfoById", id);
		return userInfo;
	}
	
	/**
	 * 获取所有对象
	 * @param userInfo
	 * @return
	 */
	public List<UserInfo> getList(UserInfo userInfo){
		List<UserInfo> userInfoList = session.selectList("getUserInfoList", userInfo);
		return userInfoList;
	}
	
	public static void main(String[] args)throws Exception {		
		Test test = new Test();
		test.init();		
		UserInfo userInfo = new UserInfo();
		//测试插入数据
		userInfo.setUsername("jack98");
//		userInfo.setPassword("jack98");		
//		test.insert(userInfo);
		// 测试更新数据
//		userInfo.setId(2);
//		userInfo.setUsername("lisi");
//		userInfo.setPassword("8888888");
//		test.update(userInfo);
		//删除数据
//		test.delete(2);
		
		//System.out.println(test.getOne(1));	
		
		test.init();
		//test.init2();
		List<UserInfo> userInfoList = test.getList(userInfo);
		for(UserInfo userInfoX : userInfoList){
			System.out.println(userInfoX);
		}	
		test.session.close();
	}
}
