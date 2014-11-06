package com.daolicloud.box.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import android.app.ProgressDialog;

public class DownLoadUtil {
	/**
	 * �����ļ�
	 * 
	 * @param serverpath
	 *            �ļ���������·��
	 * @param savedfilepath
	 *            �ڱ��ر����·��
	 * @param pd
	 *            �������Ի���
	 * @return ���سɹ� �����ļ�����,����ʧ�ܷ���null
	 */
	public static File downLoad(String serverpath, String savedfilepath,
			ProgressDialog pd) {
		try {
			URL url = new URL(serverpath);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setConnectTimeout(5000);
			if (conn.getResponseCode() == 200) {
				int max = conn.getContentLength();
				pd.setMax(max);
				InputStream is = conn.getInputStream();
				File file = new File(savedfilepath);
				FileOutputStream fos = new FileOutputStream(file);
				int len = 0;
				byte[] buffer = new byte[1024];
				int total=0;
				while ((len = is.read(buffer)) != -1) {
					fos.write(buffer, 0, len);
					total+=len;
					pd.setProgress(total);
					Thread.sleep(30);
				}
				fos.flush();
				fos.close();
				is.close();
				return file;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}
	
	public static String getFileName(String serverurl){
		return serverurl.substring(serverurl.lastIndexOf("/")+1);
	}
}
