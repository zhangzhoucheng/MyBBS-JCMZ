package com.jcmz.base;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.Arrays;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

/***
 * @remark 用于定义切面逻辑，打印service层执行方法的前后日志信息
 * @author for jld
 * @time 2018/2/9/18:30
 *
 */
@Aspect  
@Component 
public class LogAspect {  
    
	private Logger log;
    /** 
     * try{ 
     *      @Before前置通知 
     *      method.invoke(); 
     *      @AfterRunning返回通知 
     * }catch(e){ 
     *      @AfterThrowing：异常通知， 
     * } 
     * @After 
     * 
     * 告诉Spring这些放在都在那个方法的哪个位置执行 
     * 1）、告诉位置 
     [1]@Before：前置通知，在方法执行之前执行 
     [2]@After：后置通知，在方法执行最终结束之后执行。 
        如果没异常 
     [3]@AfterRunning：返回通知，在方法返回结果之后执行 
     [4]@AfterThrowing：异常通知，在方法抛出异常之后执行 
 
 execution(* com.jcmz.service.*.*(..))
    1、编写切入点表达式，来告诉spring是切入哪个方法的这个位置 
     */  
	@Pointcut(value = "execution(* com.jcmz.service.*.*(..))")  
	public void mypoint() {  
	}  
	  
	  
	@Before(value = "mypoint()")  
	public void logStart(JoinPoint joinPoint) {  
		log=LoggerFactory.getLogger(joinPoint.getThis().getClass());
	    Object[] args = joinPoint.getArgs();  
	    String name = joinPoint.getSignature().getName();  
	    log.info("AOP日志：【" + name + "】方法开始运行,参数是:"  
	            + Arrays.asList(args));  
	}  
	  
	  
	@After("mypoint()")  
	public void logEnd(JoinPoint joinPoint) {  
	    String name = joinPoint.getSignature().getName();  
	    log.info("AOP日志：【" + name + "】方法运行结束!");  
	}  
	  
	  
	@AfterThrowing(value = "mypoint()", throwing = "e")  
	public void logException(JoinPoint joinPoint, Exception e) {  
	    String name = joinPoint.getSignature().getName();  
	    log.error("AOP日志：【" + name + "】方法运行出现异常:" + e);  
	}  
	  
	  
	@AfterReturning(value = "mypoint()", returning = "res")  
	public void logReturn(JoinPoint joinPoint, Object res) {  
	    String name = joinPoint.getSignature().getName();  
	    log.info("AOP日志：【" + name + "】方法正常结束,返回值为:" + res);  
	}  
}
