package com.jcmz.model;

public class FocusUser {
    private Integer id;

    private Integer befocususerid;

    private Integer focuserid;

    private String remark;

    public Integer getId() {
        return id;
    }

    public FocusUser(Integer befocususerid, Integer focuserid) {
		super();
		this.befocususerid = befocususerid;
		this.focuserid = focuserid;
	}

	public FocusUser() {
		super();
	}

	public void setId(Integer id) {
        this.id = id;
    }

    public Integer getBefocususerid() {
        return befocususerid;
    }

    public void setBefocususerid(Integer befocususerid) {
        this.befocususerid = befocususerid;
    }

    public Integer getFocuserid() {
        return focuserid;
    }

    public void setFocuserid(Integer focuserid) {
        this.focuserid = focuserid;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}