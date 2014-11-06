package cn.ctfo.dao.impl;

import java.util.List;

import org.hibernate.Session;

import cn.ctfo.dao.IAttachmentDao;
import cn.ctfo.domain.Attachment;

public class AttachmentDaoImpl implements IAttachmentDao{

	@Override
	public void insert(Attachment attachment, Session session) {
		session.save(attachment);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Attachment> queryAllAttachments(Session session) {
		String hql = "from Attachment attachment";
		List<Attachment> list = session.createQuery(hql).list();
		return list;
	}

	@Override
	public Attachment findAttachmentById(Integer attachmentId, Session session) {
		Attachment attachment = (Attachment) session.get(Attachment.class, attachmentId);
		return attachment;
	}

	@Override
	public void update(Attachment attachment, Session session) {
		if(findAttachmentById(attachment.getAttachmentId(), session) != null){
			session.update(attachment);
		}
	}

	@Override
	public void deleteById(Integer attachmentId, Session session) {
		Attachment attachemtn = findAttachmentById(attachmentId, session);
		session.delete(attachemtn);
	}
	
}
