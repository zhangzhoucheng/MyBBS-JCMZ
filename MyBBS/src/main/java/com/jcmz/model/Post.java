package com.jcmz.model;

import java.util.Date;

public class Post {
    private Integer id;

    private String content;

    private String title;

    private Integer userid;

    private Integer blocktypeid;

    private Date time;

    private Integer managerstatus;

    private Integer postisfocus;

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

    public void setTime(Date time) {
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