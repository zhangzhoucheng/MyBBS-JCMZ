package com.jcmz.model;

public class CollectPost {
    private Integer id;

    private Integer userid;

    private Integer postid;

    private String remark;

    public Integer getId() {
        return id;
    }

    public CollectPost(Integer userid, Integer postid) {
		super();
		this.userid = userid;
		this.postid = postid;
	}

	public CollectPost() {
		super();
	}

	public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getPostid() {
        return postid;
    }

    public void setPostid(Integer postid) {
        this.postid = postid;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}