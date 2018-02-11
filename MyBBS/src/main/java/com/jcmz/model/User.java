package com.jcmz.model;

public class User {
    private Integer id;

    private String username;

    private String userpassword;

    private String nickname;//昵称

    private Integer idtype;//身份类型，0是普通用户，1是板块管理员，2是最高权限者

    private Integer status;//账户状态，0是冻结，1是正常，2是删除

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword == null ? null : userpassword.trim();
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

    public Integer getIdtype() {
        return idtype;
    }

    public void setIdtype(Integer idtype) {
        this.idtype = idtype;
    }

    public Integer getStatus() {
        return status;
    }

    public User(String username, String userpassword, String nickname, Integer idtype, Integer status) {
		super();

		this.username = username;
		this.userpassword = userpassword;
		this.nickname = nickname;
		this.idtype = idtype;
		this.status = status;
	}

	public void setStatus(Integer status) {
        this.status = status;
    }
}