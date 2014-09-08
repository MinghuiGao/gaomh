package cn.gaomh.upload;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UploadServlet
 */
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request, response);
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if(isMultipart){//����Ƕ�ý���ļ����򴩼��ļ����洢
			String path = request.getSession().getServletContext().getRealPath("/files");//��ȡӦ����files�ļ��е�Ŀ¼
			File dir = new File(path);//����һ������·������������ڵĻ��ʹ���һ���ļ��С�
			System.out.println(path);
			if(!dir.exists()){
				dir.mkdir();
			}
			//���濪ʼ�ϴ��ļ�
			DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
			ServletFileUpload fileUpload = new ServletFileUpload(diskFileItemFactory);
			fileUpload.setHeaderEncoding("utf-8");
			List<FileItem> list = null;
			try {
				list = fileUpload.parseRequest(request);
			} catch (FileUploadException e) {
				System.out.println("����requestʧ��");
				e.printStackTrace();
			}
			for(FileItem fileItem :list){
				
				if(fileItem.isFormField()){
					//����Ǳ����ݣ������������
					String name = fileItem.getFieldName();
					String value = fileItem.getString("utf-8");
					System.out.println(name+"  =  " +value);
				}else{
					//�����ļ���ʱ��
					try {
//						fileItem.write(new File(dir,System.currentTimeMillis()+fileItem.getFieldName().substring(fileItem.getFieldName().lastIndexOf("."))));
						fileItem.write(new File(dir, System.currentTimeMillis()+ fileItem.getName().substring(fileItem.getName().lastIndexOf("."))));
					} catch (Exception e) {
						System.out.println("�ϴ�ʱ�洢�ļ�ʧ�ܡ�");
						e.printStackTrace();
					}
					
				}
			}
			
		}else{
			doGet(request, response);
		}
	}

}
