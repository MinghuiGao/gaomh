package cn.gaomh.reflactBean;

import java.util.Date;

public class AttachmentModel implements java.io.Serializable {

	// Fields

	private String oid;
	private String pkId;
	private String fileUrl;
	private String filename;
	private String orgFilename;
	private long fileSize;
	private String annexType;
	private Integer indx;
	private String extention;
	private String uploader;
	private Date uploadTime;
	private Date fileCreateTime;
	private String fileCreateAddr;
	private String fileCreateCond;
	private String remark;
	private Date createTime;
	private Date updateTime;

	// Constructors

	/** default constructor */
	public AttachmentModel() {
	}

	/** full constructor */
	public AttachmentModel(String pkId, String fileUrl, String filename,
			String orgFilename, long fileSize, String annexType, Integer indx,
			String extention, String uploader, Date uploadTime,
			Date fileCreateTime, String fileCreateAddr,
			String fileCreateCond, String remark, Date createTime,
			Date updateTime) {
		this.pkId = pkId;
		this.fileUrl = fileUrl;
		this.filename = filename;
		this.orgFilename = orgFilename;
		this.fileSize = fileSize;
		this.annexType = annexType;
		this.indx = indx;
		this.extention = extention;
		this.uploader = uploader;
		this.uploadTime = uploadTime;
		this.fileCreateTime = fileCreateTime;
		this.fileCreateAddr = fileCreateAddr;
		this.fileCreateCond = fileCreateCond;
		this.remark = remark;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}

	// Property accessors

	public String getOid() {
		return this.oid;
	}

	public void setOid(String oid) {
		this.oid = oid;
	}

	public String getPkId() {
		return this.pkId;
	}

	public void setPkId(String pkId) {
		this.pkId = pkId;
	}

	public String getFileUrl() {
		return this.fileUrl;
	}

	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}

	public String getFilename() {
		return this.filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getOrgFilename() {
		return this.orgFilename;
	}

	public void setOrgFilename(String orgFilename) {
		this.orgFilename = orgFilename;
	}

	public long getFileSize() {
		return this.fileSize;
	}

	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}

	public String getAnnexType() {
		return this.annexType;
	}

	public void setAnnexType(String annexType) {
		this.annexType = annexType;
	}

	public Integer getIndx() {
		return this.indx;
	}

	public void setIndx(Integer indx) {
		this.indx = indx;
	}

	public String getExtention() {
		return this.extention;
	}

	public void setExtention(String extention) {
		this.extention = extention;
	}

	public String getUploader() {
		return this.uploader;
	}

	public void setUploader(String uploader) {
		this.uploader = uploader;
	}

	public Date getUploadTime() {
		return this.uploadTime;
	}

	public void setUploadTime(Date uploadTime) {
		this.uploadTime = uploadTime;
	}

	public Date getFileCreateTime() {
		return this.fileCreateTime;
	}

	public void setFileCreateTime(Date fileCreateTime) {
		this.fileCreateTime = fileCreateTime;
	}

	public String getFileCreateAddr() {
		return this.fileCreateAddr;
	}

	public void setFileCreateAddr(String fileCreateAddr) {
		this.fileCreateAddr = fileCreateAddr;
	}

	public String getFileCreateCond() {
		return this.fileCreateCond;
	}

	public void setFileCreateCond(String fileCreateCond) {
		this.fileCreateCond = fileCreateCond;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}


}