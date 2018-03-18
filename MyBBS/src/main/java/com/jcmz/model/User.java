package com.jcmz.model;

public class User {
    private Integer id;

    private String username;

    private String userpassword;

    private String nickname;

    @Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", userpassword=" + userpassword + ", nickname=" + nickname
				+ ", idtype=" + idtype + ", status=" + status + "]";
	}

	private Integer idtype;

    private Integer status;

    public User() {
		super();
	}

	public User(Integer id, String username, String userpassword, String nickname, Integer idtype, Integer status) {
		super();
		this.id = id;
		this.username = username;
		this.userpassword = userpassword;
		this.nickname = nickname;
		this.idtype = idtype;
		this.status = status;
	}

	public User(String string, String string2, String string3, int zeroOne, int zeroOne2) {
		// TODO Auto-generated constructor stub
	}

	public User(String name, Object object, String pas) {
		// TODO Auto-generated constructor stub
	}

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

    public void setStatus(Integer status) {
        this.status = status;
    }
}