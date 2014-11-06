package cn.ctfo.dao;

import java.util.List;

import org.hibernate.Session;

import cn.ctfo.domain.CompanyInfo;

public interface ICompanyInfoDao {

	public void insert(CompanyInfo info, Session session);

	public void deleteById(Integer companyId, Session session);

	/**
	 *  find the list of all company info.
	 * @param session
	 * @return
	 */
	public List<CompanyInfo> queryAll(Session session);

	public CompanyInfo findCompanyInfoById(Integer companyId,Session session);

	/**
	 * update the company info by the id of the param passed in.
	 * @param info
	 * @param session
	 */
	public void update(CompanyInfo info,Session session );

}
