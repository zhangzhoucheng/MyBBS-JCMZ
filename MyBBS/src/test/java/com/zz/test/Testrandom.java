package com.zz.test;

import org.junit.Test;

public class Testrandom {

	@Test
	public void test() {
		for(int i=0;i<100;i++) {
			System.out.println((int)Math.ceil(Math.random()*10));
		}
	}
}
