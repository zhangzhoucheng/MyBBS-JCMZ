package com.jcmz.model;

import java.util.Date;

public class Postreply {
    private Integer id;

    private Integer postid;

    private String replycontet;

    private Integer status;

    private Date time;

    private Integer userid;

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

    public void setTime(Date time) {
        this.time = time;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}