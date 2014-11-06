package cn.ctfo.dao.impl;

import java.util.HashSet;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.ctfo.dao.IAttachmentDao;
import cn.ctfo.dao.ICompanyInfoDao;
import cn.ctfo.dao.IInquestDao;
import cn.ctfo.dbc.HibernateUtils;
import cn.ctfo.domain.Attachment;
import cn.ctfo.domain.CompanyInfo;
import cn.ctfo.domain.Inquest;

public class MainTest {
	private static ICompanyInfoDao companyDao = new CompanyInfoDaoImpl();
	private static IInquestDao inquestDao = new InquestDaoImpl();
	private static IAttachmentDao attachmentDao = new AttachmentDaoImpl();
	static Session session = HibernateUtils.getSession();

	public static void main(String[] args) {

		Transaction t = session.beginTransaction();
		
		// new a companyInfo bean
		CompanyInfo info = new CompanyInfo();
		info.setCompanyAddress("pudong district of shanghai");
		info.setCompanyName("microsoft.");
		companyDao.insert(info, session);
		t.commit();
		
		// new an inquest.
		Inquest inquest = new Inquest();
		inquest.setDate("2014-10-06");
		inquest.setResult("normal");
		inquest.setCompanyInfo(info);

		Inquest i2 = new Inquest();
		i2.setDate("2014-10-07");
		i2.setResult("bad");
		i2.setCompanyInfo(info);

		// new an Attachment.
		Attachment attachment1 = new Attachment();
		attachment1.setDetail("just normal");
		attachment1.setFileName("file");
		attachment1.setExtension("txt");
		attachment1.setPath("/root/attachment");
		attachment1.setInquest(inquest);

		Attachment attachment2 = new Attachment();
		attachment2.setDetail("text");
		attachment2.setFileName("log");
		attachment2.setExtension("txt");
		attachment2.setPath("/root/attachment");
		attachment2.setInquest(inquest);

		Attachment attachment3 = new Attachment();
		attachment3.setDetail("text");
		attachment3.setFileName("log");
		attachment3.setExtension("txt");
		attachment3.setPath("/root/attachment");
		attachment3.setInquest(i2);

		// save key
		// the set of inquest.
		Set<Attachment> attachments1 = new HashSet<Attachment>();
		attachments1.add(attachment1);
		attachments1.add(attachment2);

		Set<Attachment> att2 = new HashSet<Attachment>();
		att2.add(attachment3);
		inquest.setAttachments(attachments1);
		i2.setAttachments(att2);

		Set<Inquest> i2s = new HashSet<Inquest>();
		i2s.add(inquest);
		i2s.add(i2);
		info.setInquests(i2s);

	}

}
