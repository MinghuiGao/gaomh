package cn.ctfo.dao;

import java.util.List;

import org.hibernate.Session;

import cn.ctfo.domain.Inquest;

public interface IInquestDao {

	void insert(Inquest inquest, Session session);

	List<Inquest> queryAllInquests(Session session);

	Inquest findInquestById(Integer inquestId, Session session);

	void deleteById(Integer inquestId, Session session);

	// no update.
}
