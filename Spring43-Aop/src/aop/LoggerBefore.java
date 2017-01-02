package aop;

import java.lang.reflect.Method;
import java.util.Arrays;

import org.apache.log4j.Logger;
import org.springframework.aop.MethodBeforeAdvice;

/**
 * 通过MethodBeforeAdvice实现前置增强
 * 
 * @author win
 *
 */
public class LoggerBefore implements MethodBeforeAdvice {
	private static final Logger log = Logger.getLogger(LoggerBefore.class);

	@Override
	public void before(Method method, Object[] arg1, Object target) throws Throwable {
		log.info("调用" + target + "的" + method.getName() + " 方法，方法入参：" + Arrays.toString(arg1));
	}
}
