package cn.ctfo.dao.impl;

import java.util.List;

import org.hibernate.Session;

import cn.ctfo.dao.ICompanyInfoDao;
import cn.ctfo.domain.CompanyInfo;

public class CompanyInfoDaoImpl implements ICompanyInfoDao {

	@Override
	public void insert(CompanyInfo info, Session session) {
		session.save(info);
	}

	@Override
	public void deleteById(Integer companyId, Session session) {
		CompanyInfo info =  this.findCompanyInfoById(companyId, session);
		session.delete(info);
	}

	@Override
	public List<CompanyInfo> queryAll(Session session) {
		String hql = "from CompanyInfo info";
		List<CompanyInfo> list = session.createQuery(hql).list();
		return list;
	}

	@Override
	public CompanyInfo findCompanyInfoById(Integer companyId, Session session) {
		CompanyInfo info = (CompanyInfo) session.get(CompanyInfo.class, companyId);
		return info;
	}

	@Override
	public void update(CompanyInfo info, Session session) {
		session.update(info);
	}

}
