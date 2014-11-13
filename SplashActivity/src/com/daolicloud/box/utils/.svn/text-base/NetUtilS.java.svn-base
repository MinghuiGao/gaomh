package com.daolicloud.box.utils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.net.ssl.HttpsURLConnection;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.ContentBody;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.CoreProtocolPNames;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;



import com.daolicloud.box.domain.FileInfo;
import com.daolicloud.box.requestVo.RequestVo;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

public class NetUtilS {

	private static HttpEntity resEntity;
	private static String json;

	/**
	 * 判断网络
	 * @param context
	 * @return
	 */
	public static boolean hasNet(Context context) {
		ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
		NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
		if(activeNetworkInfo == null || !activeNetworkInfo.isAvailable() || !activeNetworkInfo.isConnectedOrConnecting()){
			return false;
		}
		return true;
	}

	/**
	 * 登录--返回用户在服务器端的文件列表
	 * @param url
	 * @return
	 */
	public static List<FileInfo> get(String url){
		List<FileInfo> infos = new ArrayList<FileInfo>();
		HttpClient client = new DefaultHttpClient();
//		HttpGet httpGet = new HttpGet(url);
		HttpPost httpPost = new HttpPost(url);
		try {
			HttpResponse response = client.execute(httpPost);
			int code = response.getStatusLine().getStatusCode();
			if(code == 200){
				InputStream is = response.getEntity().getContent();
				InputStreamReader isr = new InputStreamReader(is);
				Gson gson = new Gson();
				infos = gson.fromJson(isr, new TypeToken<List<FileInfo>>(){}.getType());
			}
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return infos;
	}
	
	/**
	 * 上传文件--有bug
	 * @param vo
	 * @return
	 */
	public static boolean uploadFile(RequestVo vo) {
		String filePath = vo.getFilePath();
		String urlPath = vo.getUrl();// TODO 指定URL
		URL url = null;
		HttpResponse response = null;
		try {
			url = new URL(urlPath);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
		HttpClient client = new DefaultHttpClient();
		// 设置通信协议版本
		client.getParams().setParameter(CoreProtocolPNames.PROTOCOL_VERSION,
				HttpVersion.HTTP_1_1);
		HttpPost httppost = new HttpPost();
		httppost.setURI(URI.create(urlPath));
		File targetFile = new File(filePath);// 指定上传文件
		MultipartEntity mpEntity = new MultipartEntity(); // 文件传输
		ContentBody cbFile = new FileBody(targetFile);
		mpEntity.addPart("file_data", cbFile); // <input type="file"
		httppost.setEntity(mpEntity);
		try {
			response = client.execute(httppost);
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		StatusLine statusLine = response.getStatusLine();
		if (statusLine.getStatusCode() == 200) {
//			resEntity = response.getEntity();
//			if (resEntity != null) {
//				InputStream is = null;
//				try {
//					is = response.getEntity().getContent();
//				} catch (IllegalStateException e) {
//					e.printStackTrace();
//				} catch (IOException e) {
//					e.printStackTrace();
//				}
//				InputStreamReader isr = new InputStreamReader(is);
//				Gson gson = new Gson();
//				json = gson.fromJson(isr, String.class);
//			}else{
//				Log.i("netutil", "resEntity is null");
//			}
//			return json;
			return true;
		} else {
			return false;
		}
	}

}
