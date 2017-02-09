package org.crazyit.app.unidirection.util;



import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
/**
 * Description:
 * <br/>网站: <a href="http://www.crazyit.org">疯狂Java联盟</a>
 * <br/>Copyright (C), 2001-2016, Yeeku.H.Lee
 * <br/>This program is protected by copyright laws.
 * <br/>Program Name:
 * <br/>Date:
 * @author  Yeeku.H.Lee kongyeeku@163.com
 * @version  1.0
 */
public class HibernateUtil
{
	public static final SessionFactory sessionFactory;

	static
	{
		try
		{
			// 使用默认的hibernate.cfg.xml配置文件创建Configuration实例
			Configuration cfg = new Configuration()
					//.addAnnotatedClass(org.crazyit.app.unidirection.N1nojointable.Person.class)
					//.addAnnotatedClass(org.crazyit.app.unidirection.N1nojointable.Address.class)
					//.addAnnotatedClass(org.crazyit.app.unidirection.N1jointable.Person.class)
					//.addAnnotatedClass(org.crazyit.app.unidirection.N1jointable.Address.class)
					//.addAnnotatedClass(org.crazyit.app.unidirection.oneone.fk.Person.class)
					//.addAnnotatedClass(org.crazyit.app.unidirection.oneone.fk.Address.class)
					//.addAnnotatedClass(org.crazyit.app.unidirection.oneone.jointable.Person.class)
					//.addAnnotatedClass(org.crazyit.app.unidirection.oneone.jointable.Address.class)
					//.addAnnotatedClass(org.crazyit.app.unidirection.oneN.noJointable.Person.class)
					//.addAnnotatedClass(org.crazyit.app.unidirection.oneN.noJointable.Address.class)
					//.addAnnotatedClass(org.crazyit.app.unidirection.oneN.Jointable.Person.class)
					//.addAnnotatedClass(org.crazyit.app.unidirection.oneN.Jointable.Address.class)
					.configure();
			//AnnotationConfiguration cfg = new AnnotationConfiguration().configure();
			// 以Configuration实例来创建SessionFactory实例
			ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
				.applySettings(cfg.getProperties()).build();
			//sessionFactory = cfg.buildSessionFactory(serviceRegistry);
			sessionFactory = cfg.buildSessionFactory();
		}
		catch (Throwable ex)
		{
			System.err.println("Initial SessionFactory creation failed." + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

	// ThreadLocal可以隔离多个线程的数据共享，因此不再需要对线程同步
	public static final ThreadLocal<Session> session
		= new ThreadLocal<Session>();

	public static Session currentSession()
		throws HibernateException
	{
		Session s = session.get();
		// 如果该线程还没有Session,则创建一个新的Session
		if (s == null)
		{
			s = sessionFactory.openSession();
			// 将获得的Session变量存储在ThreadLocal变量session里
			session.set(s);
		}
		return s;
	}

	public static void closeSession()
		throws HibernateException
	{
		Session s = session.get();
		if (s != null)
			s.close();
		session.set(null);
	}
}