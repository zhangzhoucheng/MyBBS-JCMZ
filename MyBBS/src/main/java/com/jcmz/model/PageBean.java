package com.jcmz.model;

import java.util.List;

public class PageBean<T> {
	private int allCount;//总记录数--a
	private int perPageCount;//每页条数--b
	private int pageCount;//页数量
	private int nowPage;//当前页码--c
	private int startNum;//从哪条开始查询
	private int endNum;//从哪条结束
	
	private List<T> pageLists;//由页面传递过来的a,b,c参数得到本集合。

	public int getAllCount() {
		return allCount;
	}

	public void setAllCount(int allCount) {
		this.allCount = allCount;
	}

	public int getPerPageCount() {
		return perPageCount;
	}

	public void setPerPageCount(int perPageCount) {
		this.perPageCount = perPageCount;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}

	public List<T> getPageLists() {
		return pageLists;
	}

	public void setPageLists(List<T> pageLists) {
		this.pageLists = pageLists;
	}
}
