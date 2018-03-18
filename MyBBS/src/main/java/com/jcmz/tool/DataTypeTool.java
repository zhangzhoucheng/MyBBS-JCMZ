<<<<<<< HEAD
package com.jcmz.tool;

import java.sql.Date;
import java.util.Calendar;

import org.junit.Test;

/***
 * @remark 关于自定义的一些对于不同类型数据操作的类
 * @author for jld
 * @time 2018/2/7/13:20
 *
 */
public class DataTypeTool {
	
	/**
	 * @remark 通过传入字符串返回一个对应类型的随机的0，1数据，方便操作，如果不传参数则返回int型
	 * @time 2018/2/7/14:35
	 * @author for jld
	 * @param type
	 * @return Object
	 */
	public Object getZeroOne(String ...type) {
		
		if(type==null) {//传参数null
			return (int)(Math.random()*2);
		}
		else {
			
			if(type.length==0) {//没传参数
			
				return (int)(Math.random()*2);
			}
			else {
				String ty=type[0];
				if("int".equals(ty)) {
					return (int)(Math.random()*2);
				}
				else if("byte".equals(ty))
				{
					return ((byte)(Math.random()*2));
				}
				else if("short".equals(ty))
				{
					return (short)(Math.random()*2);
				}
				else if("Byte".equals(ty)) {
					return  new Byte(((byte)(Math.random()*2)));
				}
				else {
					return (long)(Math.random()*2);
				}
			}
		}
		
		
	}
	@Test
	public void t() {
		this.getZeroOne();
	}
	
	public java.util.Date getDateByIJK(int i,int j,int k) {
		int year=2018-i%3;
		int month=12-j%12;
		int day=28-k%28;
		java.util.Date date=new java.util.Date();
		Calendar c=Calendar.getInstance();
		//c.setTime(date);
		c.set(year, month, day);
		date=c.getTime();
		return date;
	}
	
	/***
	 * @remark 得到向上取整数
	 * @param a
	 * @param b
	 * @return
	 * @author for jld
	 * @time 2018/3/16
	 */
	public int getIntBy_up(int a,int b) {/*得到向上取整数，如1.00001=2，1=1，1.99=2*///下公式通过数学函数可验证
		
	/*证明：a/b,余数范围1到b-1,于是得到的分数范围是1/b到(b-1)/b,基于计算机int计算的舍去原则，所以当能够整除不用考虑，于是采用类似四舍五入+0.5原则，
	想要加一个小数部分数x，让"1<=[1/b,b-1/b]+x<2"该式子满足就行，由于要在int（除去0）范围绝对满足，必须x=1-1/b;才行，于是结果为a/b+1-1/b=(a+b-1)/b;*/
	//当然取模判断也一样。	
		return (a+b-1)/b;
	}
	 
=======
package com.jcmz.tool;

import java.sql.Date;
import java.util.Calendar;

import org.junit.Test;

/***
 * @remark 关于自定义的一些对于不同类型数据操作的类
 * @author for jld
 * @time 2018/2/7/13:20
 *
 */
public class DataTypeTool {
	
	/**
	 * @remark 通过传入字符串返回一个对应类型的随机的0，1数据，方便操作，如果不传参数则返回int型
	 * @time 2018/2/7/14:35
	 * @author for jld
	 * @param type
	 * @return Object
	 */
	public Object getZeroOne(String ...type) {
		
		if(type==null) {//传参数null
			return (int)(Math.random()*2);
		}
		else {
			
			if(type.length==0) {//没传参数
			
				return (int)(Math.random()*2);
			}
			else {
				String ty=type[0];
				if("int".equals(ty)) {
					return (int)(Math.random()*2);
				}
				else if("byte".equals(ty))
				{
					return ((byte)(Math.random()*2));
				}
				else if("short".equals(ty))
				{
					return (short)(Math.random()*2);
				}
				else if("Byte".equals(ty)) {
					return  new Byte(((byte)(Math.random()*2)));
				}
				else {
					return (long)(Math.random()*2);
				}
			}
		}
		
		
	}
	@Test
	public void t() {
		this.getZeroOne();
	}
	
	public java.util.Date getDateByIJK(int i,int j,int k) {
		int year=2018-i%3;
		int month=12-j%12;
		int day=28-k%28;
		java.util.Date date=new java.util.Date();
		Calendar c=Calendar.getInstance();
		//c.setTime(date);
		c.set(year, month, day);
		date=c.getTime();
		return date;
	}
	
	/***
	 * @remark 得到向上取整数
	 * @param a
	 * @param b
	 * @return
	 * @author for jld
	 * @time 2018/3/16
	 */
	public int getIntBy_up(int a,int b) {/*得到向上取整数，如1.00001=2，1=1，1.99=2*///下公式通过数学函数可验证
		
	/*证明：a/b,余数范围1到b-1,于是得到的分数范围是1/b到(b-1)/b,基于计算机int计算的舍去原则，所以当能够整除不用考虑，于是采用类似四舍五入+0.5原则，
	想要加一个小数部分数x，让"1<=[1/b,b-1/b]+x<2"该式子满足就行，由于要在int（除去0）范围绝对满足，必须x=1-1/b;才行，于是结果为a/b+1-1/b=(a+b-1)/b;*/
	//当然取模判断也一样。	
		return (a+b-1)/b;
	}
	 
>>>>>>> remotes/origin/master
}