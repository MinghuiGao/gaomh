package com.ctfo.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

/** 
 * 功能描述 : Sharedpreferences helper class.
 * @类型名称 PrefHelper
 * @版本 1.0
 * @创建者 gaomh
 * @创建时间 Aug 29, 2014 3:28:20 PM
 * @版权所有 ©2014 CTFO
 * @修改者 gaomh
 * @修改时间 Aug 29, 2014 3:28:20 PM
 * @修改描述 
 */
public class PrefHelper {
	
	private static final String PREFNAME = "ctfo";
	private static final String SESSION_ID_KEY = "sessionId";
	
	public static String getSessionId(Context context){
		long start = System.currentTimeMillis();
		SharedPreferences sharedPreferences = context.getSharedPreferences(PREFNAME, Context.MODE_PRIVATE);
		System.out.println("time comsumtion:"+ (System.currentTimeMillis()-start));
		String string = sharedPreferences.getString(SESSION_ID_KEY, "");
		return string;
	}
	
	public static void saveSessionId(Context context,String sessionId){
		long start = System.currentTimeMillis();
		SharedPreferences sharedPreferences = context.getSharedPreferences(PREFNAME, Context.MODE_PRIVATE);
		System.out.println("set sessionid---> comsumtion:"+ (System.currentTimeMillis()-start));
		Editor edit = sharedPreferences.edit();
		edit.putString(SESSION_ID_KEY, sessionId);
		edit.commit();
	}
	
}
