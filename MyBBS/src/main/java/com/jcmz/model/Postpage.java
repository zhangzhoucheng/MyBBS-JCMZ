<<<<<<< HEAD
package com.jcmz.model;

import java.io.Serializable;
import java.util.List;

public class Postpage implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;

    private String pagename;

    private Integer pagestatus;

    private Integer pagemanagerid;

    private String pageremark;
    private List<User> users;
    private List<Block> blocks;

  

	


	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public List<Block> getBlocks() {
		return blocks;
	}

	public void setBlocks(List<Block> blocks) {
		this.blocks = blocks;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPagename() {
        return pagename;
    }

    public void setPagename(String pagename) {
        this.pagename = pagename == null ? null : pagename.trim();
    }

    public Integer getPagestatus() {
        return pagestatus;
    }

    public void setPagestatus(Integer pagestatus) {
        this.pagestatus = pagestatus;
    }

    public Integer getPagemanagerid() {
        return pagemanagerid;
    }

    public void setPagemanagerid(Integer pagemanagerid) {
        this.pagemanagerid = pagemanagerid;
    }

    public String getPageremark() {
        return pageremark;
    }

    public void setPageremark(String pageremark) {
        this.pageremark = pageremark == null ? null : pageremark.trim();
    }
=======
package com.jcmz.model;

import java.io.Serializable;
import java.util.List;

public class Postpage implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;

    private String pagename;

    private Integer pagestatus;

    private Integer pagemanagerid;

    private String pageremark;
    private List<User> users;
    private List<Block> blocks;

  

	


	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public List<Block> getBlocks() {
		return blocks;
	}

	public void setBlocks(List<Block> blocks) {
		this.blocks = blocks;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPagename() {
        return pagename;
    }

    public void setPagename(String pagename) {
        this.pagename = pagename == null ? null : pagename.trim();
    }

    public Integer getPagestatus() {
        return pagestatus;
    }

    public void setPagestatus(Integer pagestatus) {
        this.pagestatus = pagestatus;
    }

    public Integer getPagemanagerid() {
        return pagemanagerid;
    }

    public void setPagemanagerid(Integer pagemanagerid) {
        this.pagemanagerid = pagemanagerid;
    }

    public String getPageremark() {
        return pageremark;
    }

    public void setPageremark(String pageremark) {
        this.pageremark = pageremark == null ? null : pageremark.trim();
    }
>>>>>>> remotes/origin/master
}