package com.jcmz.model;

public class Postbase {
    private Integer id;

    private String name;

    private Integer basetypeid;

    private Integer postid;

    public Postbase() {
		super();
	}

	private String remark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getBasetypeid() {
        return basetypeid;
    }

    public void setBasetypeid(Integer basetypeid) {
        this.basetypeid = basetypeid;
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