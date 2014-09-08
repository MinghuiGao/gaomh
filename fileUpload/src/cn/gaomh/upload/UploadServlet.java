package cn.gaomh.upload;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;

/**
 * Servlet implementation class UploadServlet
 */
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UploadServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("utf-8");
		response.getWriter().write("hello ,from upload servlet.");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// doGet(request,response);
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if (isMultipart) {// 如果是多媒体文件，则穿件文件来存储
			String path = request.getSession().getServletContext()
					.getRealPath("/files");// 获取应用中files文件夹的目录
			File dir = new File(path);// 创建一个抽象路径，如果不存在的话就创建一个文件夹。
			System.out.println(path);
			if (!dir.exists()) {
				dir.mkdir();
			}
			// 下面开始上传文件
			DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
			ServletFileUpload fileUpload = new ServletFileUpload(
					diskFileItemFactory);
			fileUpload.setHeaderEncoding("utf-8");
			List<FileItem> list = null;
//			List<DiskFileItem> list = null; modified by gaomh if upload file from disk ,use DiskFileItem.
			try {
				list = fileUpload.parseRequest(request);
			} catch (org.apache.commons.fileupload.FileUploadException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			if (list != null) {

				for (FileItem fileItem : list) {
//				for(DiskFileItem fileItem : list){
					
					if (fileItem.isFormField()) {
						// 如果是表单数据，则做输出处理。
						String name = fileItem.getFieldName();
						String value = fileItem.getString("utf-8");
						System.out.println(name + "  =  " + value);
					} else {
						// 当是文件的时候
						try {
							// fileItem.write(new
							// File(dir,System.currentTimeMillis()+fileItem.getFieldName().substring(fileItem.getFieldName().lastIndexOf("."))));
							fileItem.write(new File(dir, System
									.currentTimeMillis()
									+ fileItem.getName()
											.substring(
													fileItem.getName()
															.lastIndexOf("."))));
						} catch (Exception e) {
							System.out.println("上传时存储文件失败。");
							e.printStackTrace();
						}

					}
				}
			}

		} else {
			doGet(request, response);
		}
	}

}
