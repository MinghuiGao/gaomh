package cn.gaomh.test;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.ProtocolVersion;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.cookie.Cookie;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.ContentBody;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;

import android.app.Application;
import android.content.Context;
import android.content.Entity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Message;
import android.util.Log;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.reflect.TypeToken;

/**
 * ������������Ĺ�����
 * @author dell
 *
 */
public class MyUtil {

	private static BasicHttpParams httpParams;
	private static String tag ="headers";
	/**
	 * 向服务器端请求验证码
	 */
	public static Bitmap getCheckCode(Application application){
		Bitmap decodeStream = null;
		HttpClient client = getHttpClient();
		HttpGet get = new HttpGet(Constant.BASEURL +"check/");
		try {
			HttpResponse response = client.execute(get);
			int statusCode = response.getStatusLine().getStatusCode();
			if(statusCode == 200){
				
//				BitmapFactory.Options options = new BitmapFactory.Options();
//				options.inJustDecodeBounds = true;
//				InputStream is = response.getEntity().getContent();
//				decodeStream = BitmapFactory.decodeStream(is, null, options);
//				
////				BitmapFactory.decodeStream(is);
//				//将bitmap放大
//				
////				decodeStream.get
//				
				InputStream is = response.getEntity().getContent();
				decodeStream = BitmapFactory.decodeStream(is);
				
				Header[] headers = response.getHeaders("Set-Cookie");
				String headValue = headers[0].getValue();
				String sessionId = headValue.substring(headValue.indexOf("=")+1, headValue.indexOf(";"));
				CommonUtil.getMyAppMap(application).put("sessionId", sessionId);
				System.out.println("getCheckCode :  "+sessionId);
			}
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return decodeStream;
	}
	
	
	
	/**
	 * �ϴ�����
	 * @param vo
	 * @return
	 */
	public static boolean upload(RequestVo vo) {
		HttpClient client = new DefaultHttpClient();
		HttpPost post = new HttpPost(vo.getUrl());
		HttpEntity entity = new BasicHttpEntity();
		try {
			InputStream content = entity.getContent();
			content = new FileInputStream(new File(vo.getFilePath()));//oom
		} catch (IllegalStateException e1) {
			e1.printStackTrace();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		// EntityUtils.toString(entity, defaultCharset);
		post.setEntity(entity);
		try {
			HttpResponse response = client.execute(post);
			int statusCode = response.getStatusLine().getStatusCode();
			switch (statusCode) {
			case 204:
				return true;
			case 404://TODO 是否需要特别处理，如不需要，直接归为default，返回false。
				return false;
			default:
				break;
			}
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return false;
	}

	/**
	 *判断网络是否可用
	 * @param context
	 * @return
	 */
	public static boolean hasNet(Context context) {
		ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
		NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
		if(activeNetworkInfo == null || !activeNetworkInfo.isAvailable() ){
			return false;
		}
		return true;
	}
	
	/**
	 * @param vo
	 * @param inputField "file_data"
	 * @return
	 */
	public static boolean upload(RequestVo vo,String inputField){
		boolean isSuccess = false;
		HttpClient client = getHttpClient();
		HttpPost post = new HttpPost(vo.getUrl());
		long startTime ;
		Message msg  = Message.obtain();
		
		MultipartEntity entity = new MultipartEntity();
		ContentBody body = new FileBody(new File(vo.getFilePath()));
		entity.addPart(inputField, body);
		post.setEntity(entity);
		post.setHeader("Cookie", "sessionid="+(String)vo.getObj());
		System.out.println("executing request " + post.getRequestLine());
		startTime = System.currentTimeMillis();
		try {
			HttpResponse response = client.execute(post);//当请求url错误是，代码卡到这里了，为什么？？--!因为请求错误呗，应该看看为什么设置的超时时间没有起作用。
//			if(response.getStatusLine().getStatusCode() == 204){
//				return true;
//			}
			
			int statusCode = response.getStatusLine().getStatusCode();
//			LogUtil.uploadI("statuscode : " + statusCode);
			switch (statusCode) {
			case 200:
//				LogUtil.uploadI("200 is showing !");
				break;
			case 204:
				return true;
			case 404://TODO 是否需要特别处理，如不需要，直接归为default，返回false。
				return false;
			default:
				return false;
			}
			isSuccess = handleEntity(vo, response.getEntity());
		} catch (ClientProtocolException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		finally{
//			long endTime = System.currentTimeMillis();
//			if((endTime - startTime) >= 5000){
//				//超时
//				return false;
//			}
		}
		return isSuccess;
	}
	
	/**
	 * 从服务器端获取文件列表
	 * @return ArrayList<FileInfo>
	 */
	public static ArrayList<FileInfo> getFilesFromServer(RequestVo vo){
		ArrayList<FileInfo> fileInfos = new ArrayList<FileInfo>();
//		ArrayList<FileInfo> fileInfos = null;
		HttpResponse response = null;
		InputStream inputStream = null;
		HttpClient client = getHttpClient();
		String url = vo.getUrl().replace(" ", "%20");
		System.out.println(url);
		HttpGet get = new HttpGet(url);
//		get.setHeader("Cookie", "sessionid="+(String)vo.getObj()+";user=test");测试---
//		get.setHeader("Cookie", "sessionid="+(String)vo.getObj());
		get.setHeader("Cookie", "sessionid="+(String)vo.getObj());
		
//		get.setHeader(name, value);
		try {
			response = client.execute(get);
		} catch (ClientProtocolException e) {
			//----------------
			LogUtil.i("ClientProtocolException");
			Message msg = Message.obtain();
			msg.what = Constant.SERVEREXCEPTION;
			vo.getHandler().sendMessage(msg);
			e.printStackTrace();
			return fileInfos;
		} catch (IOException e) {
			LogUtil.i("IOException");
			e.printStackTrace();
		}
		if(response == null){
			LogUtil.i("response is null");
			Message msg = Message.obtain();
			msg.what = Constant.GETFILELISTFAILED;
			vo.getHandler().sendMessage(msg);
			return fileInfos;
		}else{
			try {
				// TODO 正常获取到数据时的statuscode是多少？
				int statusCode = response.getStatusLine().getStatusCode();
				LogUtil.uploadI("getFilesFromServer ---> statusCode : " + statusCode);
				switch (statusCode) {
				case 301://服务器重定向异常。
					LogUtil.i("301---exception......");
					return fileInfos;
				case 500://服务器内部错误----导致解析json错误，应用直接跳出。
					LogUtil.i("500=---server internal error");
					Message msg3 = Message.obtain();
					msg3.what = Constant.GETFILELISTFAILED;
					vo.getHandler().sendMessage(msg3);
					return fileInfos;
				
				default:
					//  只在返回正常时获取实体信息。
					inputStream = response.getEntity().getContent();
					break;
				}
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			//输出json字符流
			String stream2Striing = stream2Striing(inputStream);
			System.out.println(stream2Striing);
			//---------
			InputStreamReader isr = new InputStreamReader(inputStream);
			Gson gson = new Gson();
			try{
//				fileInfos = gson.fromJson(isr, new TypeToken<List<FileInfo>>(){}.getType()); 为什么不行了？--没有猴子知道。
				fileInfos = gson.fromJson(stream2Striing, new TypeToken<List<FileInfo>>(){}.getType());
			}catch (JsonIOException e) {
				Message msg4 = Message.obtain();
				msg4.what = Constant.JSONIOEXCEPTION;
				vo.getHandler().sendMessage(msg4);
			}catch (JsonSyntaxException e) {
				Message msg5 = Message.obtain();
				msg5.what = Constant.JSONSYNTAXEXCEPTION;
				vo.getHandler().sendMessage(msg5);
			}/*finally{
				fileInfos = null;
			}*/
			//测试数据写在下面的逻辑中
			if(fileInfos != null){
				System.out.println("-------fileInofos.size()......"+fileInfos.size());
			}
			return fileInfos;
		}
	}
	
	/**
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@SuppressWarnings("unchecked")
	public static String loginPost(RequestVo vo,Application application) {
		String res = null;
		HttpClient client = getHttpClient();
		HttpPost post = new HttpPost(vo.getUrl());
		post.setHeader("sessionid", vo.getFilePath());
		try {
			post.setEntity(new UrlEncodedFormEntity((List<? extends NameValuePair>) vo.getObj(), "utf-8"));
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		try {
			HttpResponse response = client.execute(post);
			int statusCode = response.getStatusLine().getStatusCode();
			System.out.println("login post :  "+statusCode);//观察如果服务器没有链接的话，返回什么
			
			switch (statusCode) {
			case 500:
				//这里应该设置为无法进入添加页面。目前可以进入添加……
				res = Constant.SERVERINTERNALEXCEPTIONMSG;
				break;
//			case 400://返回html，登录失败。--不是登录失败是获取文件列表失败。。。。
//				System.out.println("satus_code : " +400 );
//				Message msg4 = Message.obtain();
//				msg4.what = Constant.CHECKCODEERROR;
//				vo.getHandler().sendMessage(msg4);
//				break;
			case 200:
				res = EntityUtils.toString(response.getEntity(), "utf-8");
				break;
			case 204://返回sessionid
//				Header[] headers = response.getHeaders("Set-Cookie");
//				Header[] headers = response.getAllHeaders();
//				InputStream iSteam = response.getEntity().getContent();
				
//				String stream2Striing = stream2Striing(iSteam);
				
				
				
//				System.out.println(stream2Striing);
				
				
//				String headValue = headers[0].getValue();
//				String sessionId = headValue.substring(headValue.indexOf("=")+1, headValue.indexOf(";"));
				res = (String) CommonUtil.getMyAppMap(application).get("sessionId");
				LogUtil.Logger("loginpost -----> sessionid:"+res);
//				System.out.println("login post :  "+sessionId);
				break;
			default:
				break;
			}
		} catch (ClientProtocolException e) {
//			res = "ClientProtocolException";
			e.printStackTrace();
		} catch (IOException e) {
			//在这里处理服务器连接异常。。。。
			res = "IOException";
			e.printStackTrace();
		}
		return res;
	}

	/**
	 * @param vo
	 * @param entity
	 * @throws IllegalStateException
	 * @throws IOException
	 */
	private static boolean handleEntity(RequestVo vo,HttpEntity entity) throws IllegalStateException, IOException {
		List<FileInfo> infos;
		boolean isSuccess;
		InputStream is = entity.getContent();
		System.out.println(stream2Striing(is));
		InputStreamReader isr = new InputStreamReader(is);
		Gson gson = new Gson();
		infos = gson.fromJson(isr, new TypeToken<List<FileInfo>>(){}.getType());
		isSuccess = infos == null?false:true;
		Message msg = Message.obtain();
		msg.obj = infos;
		msg.what = Constant.FILELISTRETURN;
		vo.getHandler().sendMessage(msg);
		return isSuccess;
	}

	private static String stream2Striing(InputStream is) {
	     int b;
	     StringBuffer sb=new StringBuffer();
	     try {
			while((b=is.read())!=-1 ){
			   sb.append((char)b);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	    return sb.toString();
	}

	private static HttpClient getHttpClient() {
		httpParams = new BasicHttpParams();
		HttpConnectionParams.setConnectionTimeout(httpParams, 5 * 1000);
		HttpConnectionParams.setSoTimeout(httpParams, 5 * 1000);
		HttpConnectionParams.setSocketBufferSize(httpParams, 8192);
		HttpClientParams.setRedirecting(httpParams, true);
		String userAgent = "Android/4.0";
		HttpProtocolParams.setUserAgent(httpParams, userAgent);
		HttpClient httpClient = new DefaultHttpClient(httpParams);
		return httpClient;
	}

	/**
	 * 
	 * @param map
	 * @return
	 */
	public static ArrayList<NameValuePair> createNameValuePaires(
			Map<String, String> map) {
		ArrayList<NameValuePair> params = new ArrayList<NameValuePair>();
		NameValuePair pair;
		for (java.util.Map.Entry<String, String> e : map.entrySet()) {
			pair = new BasicNameValuePair(e.getKey(), e.getValue());
			params.add(pair);
			pair = null;
		}
		return params;
	}
}