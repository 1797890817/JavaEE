package com.yihaomen.test;

import java.io.Reader;
import java.util.List;

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

	/**
     * 测试增加,增加后，必须提交事务，否则不会写入到数据库.
     */
    public void addUser(){
        User user=new User();
        user.setUserAddress("人民广场");
        user.setUserName("飞鸟");
        user.setUserAge(80+"");	//int ---> string
        SqlSession session = sqlSessionFactory.openSession();
        try {
            IUserOperation userOperation=session.getMapper(IUserOperation.class);
            userOperation.addUser(user);
            session.commit();
            System.out.println("当前增加的用户 id为:"+user.getId());
        } finally {
            session.close();
        }
    }
	
    public void updateUser(){
        //先得到用户,然后修改，提交。
        SqlSession session = sqlSessionFactory.openSession();
        try {
            IUserOperation userOperation=session.getMapper(IUserOperation.class);
            User user = userOperation.selectUserByID(2);            
            user.setUserAddress("原来是魔都的浦东创新园区");
            userOperation.updateUser(user);
            session.commit();

        } finally {
            session.close();
        }
    }
    
    /**
     * 删除数据，删除一定要 commit.
     * @param id
     */
    public void deleteUser(int id){
        SqlSession session = sqlSessionFactory.openSession();
        try {
            IUserOperation userOperation=session.getMapper(IUserOperation.class);          
            userOperation.deleteUser(id);
            session.commit();            
        } finally {
            session.close();
        }
    }
    
	public void getUserList(String userName) {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			IUserOperation userOperation = session.getMapper(IUserOperation.class);
			List<User> users = userOperation.selectUsers(userName);
			for (User user : users) {
				System.out.println(user.getId() + ":" + user.getUserName() + ":" + user.getUserAddress());
			}
		} finally {
			session.close();
		}
	}

	public static void main(String[] args) {
		/*SqlSession session = sqlSessionFactory.openSession();
		try {
			// User user = (User)
			// session.selectOne("com.yihaomen.mybatis.models.UserMapper.selectUserByID",
			// 1);
			IUserOperation userOperation = session.getMapper(IUserOperation.class); // 使用接口
			// 获取单个User
			// User user = userOperation.selectUserByID(1);
			// System.out.println(user.getUserAddress());
			// System.out.println(user.getUserName());

			
		} finally {
			session.close();
		}*/
		
		Test testUser=new Test();
		//Add User
		//testUser.addUser();
		//Update User
		//testUser.updateUser();
		//Delete User
		testUser.deleteUser(2);
		
        testUser.getUserList("%");
		
	}
}