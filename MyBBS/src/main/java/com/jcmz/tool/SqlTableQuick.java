package com.jcmz.tool;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jcmz.mapper.BlocksHotNumMapper;

@Component
public class SqlTableQuick {

	@Autowired
	private BlocksHotNumMapper bhm;
	
	public  int getBlocksHotNum() {
		int n=bhm.selectByPrimaryKey(1).getNum();
		return n;
	}
}
