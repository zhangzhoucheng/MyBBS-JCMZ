package com.jcmz.tool;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/***
 * @remark 获取随机数的类
 *  @author for jld
 *
 */
public class GetRandom {

	private Logger log=LoggerFactory.getLogger(this.getClass());
	/***
	 * 
	 * @param bit 
	 * @return 
	 */
	@Test
	public void test() {
		for(int i=0;i<12;i++) {
			getRandomByBit((int) (Math.random()*10));
		}
		for(int i=0;i<1200;i++) {
			getRandomByBit(6);
		}
	}
	/***
	 * @remark 该方法是输入位数，得到相应位数的随机整数
	 * @param bit 该参数会计算成是1-9范围
	 * @return int 返回一个9位数整数的随机数
	 */
	public int getRandomByBit(int bit) {
		
		if(1<=bit && bit<=9) {
			
		}else if(bit<1) {
			bit=1;
		}else if(bit>9) {
			bit=9;
		}
		int d=10,sum=0;
		for(int i=1;i<=bit;i++) {
			int rand;
			if(i==bit) {
				rand=(int) Math.floor(Math.random()*9+1);
			}else {
				rand=(int) Math.floor(Math.random()*10+0);
			}
			sum+=(int)(Math.pow(d, i-1))*rand;
		}
		log.info("随机数是【"+sum+"】");
		return sum;
	}
	
	
}
