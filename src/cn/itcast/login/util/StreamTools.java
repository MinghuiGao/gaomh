package cn.itcast.login.util;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;

public class StreamTools {

	/**
	 * ��һ����������������� ת�������һ��byte��������
	 * @param is
	 * @return
	 * @throws Exception
	 */
	public static byte[] getBytes(InputStream is) throws Exception{
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		byte[] buffer = new byte[1024];
		int len =0;
		while((len = is.read(buffer))!=-1){
			baos.write(buffer, 0, len);
		}
		is.close();
		return baos.toByteArray();
		
	}
}
