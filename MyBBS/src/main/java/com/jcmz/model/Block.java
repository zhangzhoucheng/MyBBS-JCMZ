package com.jcmz.model;

public class Block {
    private Integer id;

    private String blockname;

    private String blockremark;

    private Integer blockstatus;

    public Block(String blockname, String blockremark, Integer blockstatus, Integer pageid) {
		super();
		this.blockname = blockname;
		this.blockremark = blockremark;
		this.blockstatus = blockstatus;
		this.pageid = pageid;
	}

	

	public Block(Integer id, String blockname, String blockremark, Integer blockstatus, Integer pageid) {
		super();
		this.id = id;
		this.blockname = blockname;
		this.blockremark = blockremark;
		this.blockstatus = blockstatus;
		this.pageid = pageid;
	}

	public Block() {
		super();
	}

	private Integer pageid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBlockname() {
        return blockname;
    }

    public void setBlockname(String blockname) {
        this.blockname = blockname == null ? null : blockname.trim();
    }

    public String getBlockremark() {
        return blockremark;
    }

    public void setBlockremark(String blockremark) {
        this.blockremark = blockremark == null ? null : blockremark.trim();
    }

    public Integer getBlockstatus() {
        return blockstatus;
    }

    public void setBlockstatus(Integer blockstatus) {
        this.blockstatus = blockstatus;
    }

    public Integer getPageid() {
        return pageid;
    }

    public void setPageid(Integer pageid) {
        this.pageid = pageid;
    }
}