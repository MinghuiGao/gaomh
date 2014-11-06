package cn.ctfo.domain;

public class Attachment {

	private Integer attachmentId;
	private String path;
	private String fileName;
	private String extension;
	private String detail;

	// keep the foreign key of the inquest.
	private Inquest inquest;

	public Integer getAttachmentId() {
		return attachmentId;
	}

	public void setAttachmentId(Integer attachmentId) {
		this.attachmentId = attachmentId;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getExtension() {
		return extension;
	}

	public void setExtension(String extension) {
		this.extension = extension;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public Inquest getInquest() {
		return inquest;
	}

	public void setInquest(Inquest inquest) {
		this.inquest = inquest;
	}


}
