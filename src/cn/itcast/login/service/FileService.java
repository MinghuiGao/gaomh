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
	 * 保存数据到手机的rom空间
	 * 
	 * @param context 上下文
	 * @param filename 保存的文件名
	 * @param name 用户名
	 * @param password 密码
	 * @return
	 */
	public static boolean saveToRom(Context context, String filename,
			String name, String password) {
		// File file = new File("/data/data/cn.itcast.login/a.txt");
		File file = new File(context.getFilesDir(), filename);
		// 如果没有指定访问的模式 ,文件的模式 默认是私有的权限.
		// 只有当前的应用程序可以读写这个文件 ,别的应用程序是不可以操作这个文件.
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
	 * 读取存储的内容
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
	 * 保存数据到手机的rom空间的缓存目录
	 * 作用 保存应用程序的临时数据, 在手机内存不足的时候 系统会释放掉这块空间
	 * 用户也可以手工的释放掉这块空间
	 * 
	 * @param context 上下文
	 * @param filename 保存的文件名
	 * @param name 用户名
	 * @param password 密码
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
	 * 保存数据到手机的SD卡
	 * 
	 * @param context 上下文
	 * @param filename 保存的文件名
	 * @param name 用户名
	 * @param password 密码
	 * @return
	 */
	public static boolean saveToSD(Context context, String filename,
			String name, String password) {
		//在保存数据到sd卡之前 ,最好判断一下 用户是否有sd卡 sd是否可用.
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
