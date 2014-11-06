package cn.ctfo.domain;

import java.util.HashSet;
import java.util.Set;

public class CompanyInfo {
	public Integer companyId;
	public String companyName;
	public String companyAddress;
	
	private Set<Inquest> inquests = new HashSet<Inquest>();

	public Integer getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyAddress() {
		return companyAddress;
	}

	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}

	public Set<Inquest> getInquests() {
		return inquests;
	}

	public void setInquests(Set<Inquest> inquests) {
		this.inquests = inquests;
	}
	
	
	
}
