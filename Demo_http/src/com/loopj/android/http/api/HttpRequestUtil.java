package com.loopj.android.http.api;

import android.content.Context;

import com.ctfo.constants.Config;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.BinaryHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.loopj.android.http.ResponseHandlerInterface;

public class HttpRequestUtil {
	
	private static final AsyncHttpClient client = new AsyncHttpClient();
	private final StringBuilder baseUrl = new StringBuilder(Config.HOST);
	
	public static void devicesLogin(Context context,String url,RequestParams params,ResponseHandlerInterface responseHandler){
		
		client.post(context, url, params, responseHandler);
	}
	
	public static void deviceLogout(){
		
	}
	
	public static void getJson(String url , ResponseHandlerInterface responseHandler){
		client.get(url, responseHandler);
	}
	//TODO : test this method.
	public static void getPics(Context context,String url,BinaryHttpResponseHandler binaryHttpResponseHandler){
		client.get(context, url, binaryHttpResponseHandler);
	}
	
	// post params 
	public static void post(Context context, String url,RequestParams params,ResponseHandlerInterface responseHandler){
		client.post(context, url, params, responseHandler);
	}
	// post json , put json string in entity.
	public static void postForm(){
		
	}
	//
	public static void upload(){
		
	}
	
	public static void download(){
		
	}
}
