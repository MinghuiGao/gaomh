package com.daolicloud.box.utils;

import android.util.Log;

public class LogUtil {
	public static final String TAG = "daolicloud";
	private static boolean DEBUG = true;
	private static boolean PRINTLOG = false;
	private static boolean IS_DEBUG = false;

	/**
	 * 上传调试
	 */
	private static boolean upload = true;
	/**
	 * checkbox log...
	 */
	private static boolean checkBox = true;
	
	/**
	 * 上传调试
	 * @param msg
	 */
	public static void uploadI(String msg){
		if(upload && DEBUG){
			Log.i("upload", msg);
		}
	}
	/**
	 * checkBox
	 * @param msg
	 * @return
	 */
	public static void checkBox(String msg){
		if(checkBox  && DEBUG){
			Log.i("checkbox ---", msg);
		}
	}
	
	
	public static void i(String msg) {
		if (DEBUG) {
			Log.i(TAG, msg);
		}
	}

	public static void i(String tag, String msg) {
		if (DEBUG) {
			Log.i(tag, msg);
		}
	}

	public static void i(String tag, String msg, Throwable tr) {
		if (DEBUG) {
			Log.i(tag, msg, tr);
		}
	}

	public static void v(String msg) {
		if (DEBUG || IS_DEBUG) {
			Log.v(TAG, msg);
		}
	}

	public static void v(String tag, String msg) {
		if (DEBUG || IS_DEBUG) {
			Log.v(tag, msg);
		}
	}

	public static void e(String msg) {
		if (DEBUG) {
			Log.e(TAG, msg);
		}
	}

	public static void e(String tag, String msg) {
		if (DEBUG) {
			Log.e(tag, msg);
		}
	}

	public static void e(String tag, String msg, Throwable tr) {
		if (DEBUG) {
			Log.e(tag, msg, tr);
		}
	}

	public static boolean isDEBUG() {
		return DEBUG;
	}

	public static void setDEBUG(boolean debug) {
		DEBUG = debug;
	}

	public static boolean isPrintlog() {
		return PRINTLOG;
	}

	public static boolean isPRINTLOG() {
		return PRINTLOG;
	}

	public static void setPRINTLOG(boolean pRINTLOG) {
		PRINTLOG = pRINTLOG;
	}
	
	
	public static void Logger(String msg) {
		if (IS_DEBUG) {
			Log.e(TAG, msg);
		}
	}
}
