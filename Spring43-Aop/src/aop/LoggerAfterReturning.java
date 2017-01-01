package aop;

import java.lang.reflect.Method;

import org.apache.log4j.Logger;
import org.springframework.aop.AfterReturningAdvice;

/**
 * 通过AfterReturningAdvice实现后置增强
 * 
 * @author win
 *
 */
public class LoggerAfterReturning implements AfterReturningAdvice {
	private static final Logger log = Logger.getLogger(LoggerAfterReturning.class);

	@Override
	public void afterReturning(Object returnValue, Method method, Object[] arg2, Object target) throws Throwable {
		log.info("调用" + target + "的 " + method.getName() + "方法，方法的返回值：" + returnValue);
	}

}
