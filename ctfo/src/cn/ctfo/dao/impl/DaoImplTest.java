package cn.ctfo.dao.impl;

import java.util.HashSet;
import java.util.List;
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

public class DaoImplTest {

	private static ICompanyInfoDao dao = new CompanyInfoDaoImpl();
	private static IInquestDao inquestDao = new InquestDaoImpl();
	private static IAttachmentDao attachmentDao = new AttachmentDaoImpl();

	static Session session = HibernateUtils.getSession();

	public static void main(String[] args) {

		// new a companyInfo bean
		CompanyInfo info = new CompanyInfo();
		info.setCompanyAddress("pudong district of shanghai");
		info.setCompanyName("microsoft.");

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
		
		Transaction beginTransaction = session.beginTransaction();
		
		dao.insert(info, session);
		// save inquest
		inquestDao.insert(inquest, session);
		inquestDao.insert(i2, session);

		attachmentDao.insert(attachment1, session);
		attachmentDao.insert(attachment2, session);
		attachmentDao.insert(attachment3, session);
		HibernateUtils.commit(beginTransaction);
		
/*		Transaction beginTransaction = session.beginTransaction();
		// ///////////////// test of companyInfo dao
		Set<Inquest> inquests = new HashSet<Inquest>();
		inquests.add(inquest);
		info.setInquests(inquests);
		// save primary key CompanyInfo first.
		// dao.insert(info, session);
		// find();
		// update();
		// listAll();
		// delete();
		// ///////////////// test of companyInfo dao///////// end
		// ///////////////// test of Inquest dao
		// save foreign key inquest second.
		// inquestDao.insert(inquest, session);
		Inquest res = inquestDao.findInquestById(2, session);
		CompanyInfo infoFromInquest = res.getCompanyInfo();
		int companyId = infoFromInquest.getCompanyId();
		CompanyInfo byId = dao.findCompanyInfoById(companyId, session);
		System.out.println("result : " + byId.getCompanyName());
		// List<Inquest> queryAllInquests =
		// inquestDao.queryAllInquests(session);
		// System.out.println(queryAllInquests.size());

		HibernateUtils.commit(beginTransaction);
*/	}

	private static void delete() {
		if (dao.findCompanyInfoById(2, session) != null) {
			dao.deleteById(2, session);
		}
	}

	private static void listAll() {
		List<CompanyInfo> list = dao.queryAll(session);
		System.out.println("size of the compays  : " + list.size());
	}

	private static void update() {
		CompanyInfo info2 = dao.findCompanyInfoById(2, session);
		info2.setCompanyName("460");
		dao.update(info2, session);
	}

	public static void find() {
		CompanyInfo info2 = dao.findCompanyInfoById(4, session);
		Set<Inquest> inquests = info2.getInquests();
		for (Inquest inquest : inquests) {
			System.out.println("result : " + inquest.getResult() + " date : "
					+ inquest.getDate());
		}
		System.out.println("find ****	" + info2.getCompanyName());
	}

}
