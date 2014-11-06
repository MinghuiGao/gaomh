package cn.ctfo.dao.impl;

import java.util.List;

import org.hibernate.Session;

import cn.ctfo.dao.IInquestDao;
import cn.ctfo.domain.Inquest;

public class InquestDaoImpl implements IInquestDao {

	@Override
	public void insert(Inquest inquest, Session session) {
		session.save(inquest);
	}

	@Override
	public List<Inquest> queryAllInquests(Session session) {
		String hql = "from Inquest inquest";
		List<Inquest> inquests = session.createQuery(hql).list();
		return inquests;
	}

	@Override
	public Inquest findInquestById(Integer inquestId, Session session) {
		Inquest inquest = (Inquest) session.get(Inquest.class, inquestId);
		return inquest;
	}

	@Override
	public void deleteById(Integer inquestId, Session session) {
		Inquest inquest = this.findInquestById(inquestId, session);
		session.delete(inquest);
	}
	
	public boolean deleteInquest(Inquest inquest ,Session session){
		session.delete(inquest);
		if(this.findInquestById(inquest.getInquestId(), session) == null){
			return true;
		}else {
			return false;
		}
	}

}
