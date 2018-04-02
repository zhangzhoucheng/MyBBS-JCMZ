package com.jcmz.model;

import java.sql.Timestamp;
import java.util.Date;

public class Post {
    private Integer id;

    private String content;

    private String title;

    private Integer userid;

    private Integer blocktypeid;

    private Timestamp time;
    private Integer managerstatus;

    public int getCollectedNum() {
		return collectedNum;
	}

	public void setCollectedNum(int collectedNum) {
		this.collectedNum = collectedNum;
	}

	private Integer postisfocus;//帖子被点赞数
    private int collectedNum;//帖子被收藏的数量
    private Timestamp setTopTime;
    
    
    public Timestamp getSetTopTime() {
		return setTopTime;
	}

	public void setSetTopTime(Timestamp setTopTime) {
		this.setTopTime = setTopTime;
	}

	private User user;

    public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Post(Integer id, String content, String title, Integer userid, Integer blocktypeid, Date time,
			Integer managerstatus, Integer postisfocus) {
		super();
		this.id = id;
		this.content = content;
		this.title = title;
		this.userid = userid;
		this.blocktypeid = blocktypeid;
		this.time = (Timestamp) time;
		this.managerstatus = managerstatus;
		this.postisfocus = postisfocus;
	}

	public Post() {
		super();
	}

	public Post(String content, String title, Integer userid, Integer blocktypeid, Timestamp time, Integer managerstatus,
			Integer postisfocus) {
		super();
		this.content = content;
		this.title = title;
		this.userid = userid;
		this.blocktypeid = blocktypeid;
		this.time = time;
		this.managerstatus = managerstatus;
		this.postisfocus = postisfocus;
	}

	public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getBlocktypeid() {
        return blocktypeid;
    }

    public void setBlocktypeid(Integer blocktypeid) {
        this.blocktypeid = blocktypeid;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public Integer getManagerstatus() {
        return managerstatus;
    }

    public void setManagerstatus(Integer managerstatus) {
        this.managerstatus = managerstatus;
    }

    public Integer getPostisfocus() {
        return postisfocus;
    }

    public void setPostisfocus(Integer postisfocus) {
        this.postisfocus = postisfocus;
    }
}