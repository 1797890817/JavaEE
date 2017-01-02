package service.impl;

import dao.UserDao;
import entity.User;
import lombok.Setter;
import service.UserService;

/**
 * 用户业务类，实现对User功能的业务管理
 * @author win
 *
 */
public class UserServiceImpl implements UserService {
	//声明接口类的引用，和具体实现类解耦合
	@Setter
	private UserDao dao;
	//使用lombok生成的dao属性的Setter访问器，会被Spring调用，实现设置注入
	
	@Override
	public void addNewUser(User user) {
		//调用DAO的方法保存用户的信息
		dao.save(user);
	}
}
