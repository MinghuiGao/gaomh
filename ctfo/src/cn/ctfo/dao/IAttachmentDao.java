package cn.ctfo.dao;

import java.util.List;

import org.hibernate.Session;

import cn.ctfo.domain.Attachment;

public interface IAttachmentDao {

	void insert(Attachment attachment, Session session);

	List<Attachment> queryAllAttachments(Session session);

	Attachment findAttachmentById(Integer attachmentId, Session session);

	void update(Attachment attachment, Session session);

	void deleteById(Integer attachmentId, Session session);

}
