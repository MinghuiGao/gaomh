package cn.gaomh.reflactBean;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ReflectTest {

	/**
	 * 功能描述：
	 * @param args 
	 * @版本 1.0
	 * @创建者 gaominghui
	 * @创建时间 2014-10-27 下午7:02:50
	 * @版权所有 ©2014 CTFO
	 * @修改者 gaominghui
	 * @修改时间 2014-10-27 下午7:02:50
	 * 修改描述 
	 */

	public static void main(String[] args) {
		AttachmentModel model = new AttachmentModel();
		String fileUrl = "abc/test";
		try {
			Method method = model.getClass().getDeclaredMethod("setFileUrl", String.class);
			method.invoke(model,fileUrl );
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("fileUrl : "+ model.getFileUrl());
		
	}

}
