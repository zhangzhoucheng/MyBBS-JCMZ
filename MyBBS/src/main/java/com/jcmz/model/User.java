package com.jcmz.model;

import java.util.List;

public class User {
    private Integer id;

    private String username;

    private String userpassword;

    private String nickname;
  
    private int beFocusedNum;//被关注的数量
 

	private int focusOtherNum;//关注其他人的数量
    private int collectNum;//收藏帖子的数量
    private int postNum;//自己拥有的帖子数
    private String toWhoName;
    public User(String username, String userpassword, String nickname, int beFocusedNum, int focusOtherNum,
			int collectNum, int postNum, Integer idtype, Integer status) {
		super();
		this.username = username;
		this.userpassword = userpassword;
		this.nickname = nickname;
		this.beFocusedNum = beFocusedNum;
		this.focusOtherNum = focusOtherNum;
		this.collectNum = collectNum;
		this.postNum = postNum;
		this.idtype = idtype;
		this.status = status;
	}

	public String getToWhoName() {
		return toWhoName;
	}

	public void setToWhoName(String toWhoName) {
		this.toWhoName = toWhoName;
	}

	public List<Postreply> getPostReplays() {
		return postReplays;
	}

	public void setPostReplays(List<Postreply> postReplays) {
		this.postReplays = postReplays;
	}

	private List<Post> posts;
    private List<Postreply> postReplays;

    public List<Post> getPosts() {
		return posts;
	}

	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}

	public int getBeFocusedNum() {
		return beFocusedNum;
	}

	public void setBeFocusedNum(int beFocusedNum) {
		this.beFocusedNum = beFocusedNum;
	}

	public int getFocusOtherNum() {
		return focusOtherNum;
	}

	public void setFocusOtherNum(int focusOtherNum) {
		this.focusOtherNum = focusOtherNum;
	}

	public int getCollectNum() {
		return collectNum;
	}

	public void setCollectNum(int collectNum) {
		this.collectNum = collectNum;
	}

	public int getPostNum() {
		return postNum;
	}

	public void setPostNum(int postNum) {
		this.postNum = postNum;
	}

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