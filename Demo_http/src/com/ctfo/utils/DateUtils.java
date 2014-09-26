package com.ctfo.utils;

import android.content.Context;
import android.text.format.Time;

/** 
 * 功能描述 
 * @类型名称 DateUtils
 * @版本 1.0
 * @创建者 gaomh
 * @创建时间 Sep 3, 2014 9:51:35 AM
 * @版权所有 ©2014 CTFO
 * @修改者 gaomh
 * @修改时间 Sep 3, 2014 9:51:35 AM
 * @修改描述 
 */
public class DateUtils {
	/** 
	 * 功能描述 
	 * @类型名称 HourMode
	 * @版本 1.0
	 * @创建者 gaomh
	 * @创建时间 Sep 3, 2014 9:59:19 AM
	 * @版权所有 ©2014 CTFO
	 * @修改者 gaomh
	 * @修改时间 Sep 3, 2014 9:59:19 AM
	 * @修改描述 
	 */
	enum HourMode{
		MODE_12,MODE_24
	};
	
	/**
	 * 功能描述：return the time stamp .
	 * @return 
	 * @版本 1.0
	 * @创建者 gaomh
	 * @创建时间 Sep 3, 2014 9:57:52 AM
	 * @版权所有 ©2014 CTFO
	 * @修改者 gaomh
	 * @修改时间 Sep 3, 2014 9:57:52 AM
	 * 修改描述 
	 */
	public static String getTimeStamp(){
		StringBuilder sb = new StringBuilder();
		Time time = new Time();
		time.setToNow();
		sb.append(String.valueOf(time.year));
		sb.append(String.valueOf(time.month+1));
		sb.append(String.valueOf(time.monthDay));
		sb.append("_");
		sb.append(String.valueOf(time.hour+1));
		sb.append(String.valueOf(time.minute));
		sb.append(String.valueOf(time.second));
		return sb.toString();
	}
	
	/**
	 * 功能描述：
	 * @param context
	 * @return 
	 * @版本 1.0
	 * @创建者 gaomh
	 * @创建时间 Sep 3, 2014 10:00:51 AM
	 * @版权所有 ©2014 CTFO
	 * @修改者 gaomh
	 * @修改时间 Sep 3, 2014 10:00:51 AM
	 * 修改描述 
	 */
	public static HourMode getHourModeOfDevice(final Context context){
		return android.text.format.DateFormat.is24HourFormat(context) == true? HourMode.MODE_24: HourMode.MODE_12;
	}
	
}
