package dao.impl;

import dao.UserDao;
import entity.User;

/**
 * 用户DAO类，实现IDao接口，负责User类的持久化操作
 * 
 * @author win
 *
 */
public class UserDaoImpl implements UserDao {

	@Override
	public void save(User user) {
		// 这里并没有实现完整的数据库操作，仅为了说明问题
		System.out.println("保存用户信息到数据库！");
	}
}
