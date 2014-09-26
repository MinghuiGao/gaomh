package com.ctfo.utils;

import com.google.gson.Gson;

/**
 * 功能描述 : a utils collection of json parsing.
 * 
 * @类型名称 JsonUtils
 * @版本 1.0
 * @创建者 gaomh
 * @创建时间 Sep 1, 2014 10:43:35 AM
 * @版权所有 ©2014 CTFO
 * @修改者 gaomh
 * @修改时间 Sep 1, 2014 10:43:35 AM
 * @修改描述
 */
public class JsonUtils {
	private static Gson GSON = new Gson();

	public static <T> T parseJson(String jsonStr, Class<T> classOfT) {
		T fromJson = GSON.fromJson(jsonStr, classOfT);
		return fromJson;
	}
	
	public static <T> void parseMap(String jsonStr, Class<T> key,Class<T> value){
		
	}

}
