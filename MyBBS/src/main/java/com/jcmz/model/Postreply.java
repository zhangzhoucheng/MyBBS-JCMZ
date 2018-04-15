package com.jcmz.model;

import java.sql.Timestamp;
import java.util.Date;

public class Postreply {
    private Integer id;

    private Integer postid;

    private String replycontet;

    private Integer status;

    private Timestamp time;

    private Integer userid;
    private int toWhoId;
    private String toWhoName;//仅仅是为了取值，表中并没有这个字段
    public Postreply(Integer postid, String replycontet, Integer status, Timestamp time, Integer userid, int toWhoId,
			int praiseNum) {
		super();
		this.postid = postid;
		this.replycontet = replycontet;
		this.status = status;
		this.time = time;
		this.userid = userid;
		this.toWhoId = toWhoId;
		this.praiseNum = praiseNum;
	}

	
	private User user;
    private int praiseNum;

    public int getPraiseNum() {
		return praiseNum;
	}

	public void setPraiseNum(int praiseNum) {
		this.praiseNum = praiseNum;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getToWhoName() {
		return toWhoName;
	}

	public void setToWhoName(String toWhoName) {
		this.toWhoName = toWhoName;
	}

	public Postreply() {
		super();
	}

	public int getToWhoId() {
		return toWhoId;
	}

	public void setToWhoId(int toWhoId) {
		this.toWhoId = toWhoId;
	}

	public Postreply(Integer postid, String replycontet, Integer status, Timestamp time, Integer userid, int toWhoId) {
		super();
		this.postid = postid;
		this.replycontet = replycontet;
		this.status = status;
		this.time = time;
		this.userid = userid;
		this.toWhoId = toWhoId;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPostid() {
        return postid;
    }

    public void setPostid(Integer postid) {
        this.postid = postid;
    }

    public String getReplycontet() {
        return replycontet;
    }

    public void setReplycontet(String replycontet) {
        this.replycontet = replycontet == null ? null : replycontet.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}