package cn.gaomh.test;

import java.io.Serializable;

import com.daolicloud.box.handler.MyHandler;
import com.daolicloud.box.handler.MyObject;

import android.os.Handler;

public class RequestVo implements Serializable{

	private String filePath;
	private String url;
	private MyObject mObj;
	private MyHandler handler;
	
	/**
	 * 上传文件的requestvo
	 * @param filePath
	 * @param url
	 * @param obj
	 */
	public RequestVo(String filePath, String url, Object obj) {
		super();
		mObj = new MyObject(obj);
		this.filePath = filePath;
		this.url = url;
		this.mObj.obj = obj;
	}
	/**
	 * 用户登录vo
	 * @param url
	 * @param obj
	 */
	public RequestVo(String url, Object obj){
		mObj = new MyObject(obj);
		this.url = url;
		this.mObj.obj = obj;
		this.filePath = "";
	}
	
	

	public Object getObj() {
		return mObj.obj;
	}
	public void setObj(Object obj) {
		this.mObj.obj = obj;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Handler getHandler() {
		return handler;
	}
	public void setHandler(MyHandler handler) {
		this.handler = handler;
	}
	
}
