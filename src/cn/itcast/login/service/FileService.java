package cn.itcast.login.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;

import cn.itcast.login.util.StreamTools;

import android.content.Context;
import android.os.Environment;

public class FileService {

	/**
	 * �������ݵ��ֻ���rom�ռ�
	 * 
	 * @param context ������
	 * @param filename ������ļ���
	 * @param name �û���
	 * @param password ����
	 * @return
	 */
	public static boolean saveToRom(Context context, String filename,
			String name, String password) {
		// File file = new File("/data/data/cn.itcast.login/a.txt");
		File file = new File(context.getFilesDir(), filename);
		// ���û��ָ�����ʵ�ģʽ ,�ļ���ģʽ Ĭ����˽�е�Ȩ��.
		// ֻ�е�ǰ��Ӧ�ó�����Զ�д����ļ� ,���Ӧ�ó����ǲ����Բ�������ļ�.
		try {
			FileOutputStream fos = new FileOutputStream(file);
			fos.write((name + ":" + password).getBytes());
			fos.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	/**
	 * ��ȡ�洢������
	 * @param context
	 * @param filename
	 * @return
	 */
	public static Map<String,String> readFromRom(Context context,String filename){
		try {
			File file = new File(context.getFilesDir(),filename);
			FileInputStream fis = new FileInputStream(file);
			byte[] result = StreamTools.getBytes(fis);
			String[] data = new String(result).split(":");
		    String name =	data[0];
			String password = data[1];
			Map<String, String> map = new HashMap<String, String>();
			map.put("name", name);
			map.put("password", password);
			return map;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
		
	}
	
	
	/**
	 * �������ݵ��ֻ���rom�ռ�Ļ���Ŀ¼
	 * ���� ����Ӧ�ó������ʱ����, ���ֻ��ڴ治���ʱ�� ϵͳ���ͷŵ����ռ�
	 * �û�Ҳ�����ֹ����ͷŵ����ռ�
	 * 
	 * @param context ������
	 * @param filename ������ļ���
	 * @param name �û���
	 * @param password ����
	 * @return
	 */
	public static boolean saveToRomCache(Context context, String filename,
			String name, String password) {
		// File file = new File("/data/data/cn.itcast.login/a.txt");
		File file = new File(context.getCacheDir(), filename);
		try {
			FileOutputStream fos = new FileOutputStream(file);
			fos.write((name + ":" + password).getBytes());
			fos.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
	
	/**
	 * �������ݵ��ֻ���SD��
	 * 
	 * @param context ������
	 * @param filename ������ļ���
	 * @param name �û���
	 * @param password ����
	 * @return
	 */
	public static boolean saveToSD(Context context, String filename,
			String name, String password) {
		//�ڱ������ݵ�sd��֮ǰ ,����ж�һ�� �û��Ƿ���sd�� sd�Ƿ����.
							///mnt/sdcard/
							///sdcard
		File file = new File(Environment.getExternalStorageDirectory(), filename);
		try {
			FileOutputStream fos = new FileOutputStream(file);
			fos.write((name + ":" + password).getBytes());
			fos.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
