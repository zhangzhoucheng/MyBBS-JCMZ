package com.jcmz.tool;

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
				return (int)Math.random()*2;
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
}