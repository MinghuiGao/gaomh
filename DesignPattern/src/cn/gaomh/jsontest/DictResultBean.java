package cn.gaomh.jsontest;

import java.util.ArrayList;

public class DictResultBean {
	/**
	 * 状态码
	 */
	private int statusCode;

	/**
	 * 返回的数字字典数据的集合
	 */
	private ArrayList<DictBean> ditcBeans;
	/**
	 * 返回的信息
	 */
	private String message;
	
	/**
	 * 返回的版本号
	 */
	private int versionCode;

	public int getStatusCode() {
		return statusCode;
	}

	public void setStatusCode(int statusCode) {
		this.statusCode = statusCode;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public ArrayList<DictBean> getDitcBeans() {
		return ditcBeans;
	}

	public void setDitcBeans(ArrayList<DictBean> ditcBeans) {
		this.ditcBeans = ditcBeans;
	}

	public int getVersionCode() {
		return versionCode;
	}

	public void setVersionCode(int versionCode) {
		this.versionCode = versionCode;
	}

}
