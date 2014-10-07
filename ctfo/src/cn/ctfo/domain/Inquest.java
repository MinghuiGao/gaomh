package cn.ctfo.domain;

import java.util.HashSet;
import java.util.Set;

public class Inquest {

	private Integer inquestId;
	private String result;
	private String date;
	private CompanyInfo companyInfo;

	private Set<Attachment> attachments = new HashSet<Attachment>();

	public Set<Attachment> getAttachments() {
		return attachments;
	}

	public void setAttachments(Set<Attachment> attachments) {
		this.attachments = attachments;
	}

	public CompanyInfo getCompanyInfo() {
		return companyInfo;
	}

	public void setCompanyInfo(CompanyInfo companyInfo) {
		this.companyInfo = companyInfo;
	}

	public Integer getInquestId() {
		return inquestId;
	}

	public void setInquestId(Integer inquestId) {
		this.inquestId = inquestId;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}
