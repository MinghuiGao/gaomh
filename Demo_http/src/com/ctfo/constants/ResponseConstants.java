package com.ctfo.constants;

public class ResponseConstants {

	public final static int STATUS_SUCCESS = 2000;
	/**
	 * 输入参数有误
	 */
	public final static int STATUS_PARAMS_INCORRECT = 4000;
	/**
	 * 验证码已失效
	 */
	public final static int STATUS_VERIFYCODE_EXPIRED = 4001;
	/**
	 * 验证码错误
	 */
	public final static int STATUS_VERIFYCODE_INCORRECT = 4002;
	/**
	 * 此用户已被禁用
	 */
	public final static int STATUS_USER_BANNED = 4003;
	/**
	 * 密码错误
	 */
	public final static int STATUS_PASSWORD_INCORRECT = 4004;
	/**
	 * 用户名不存在
	 */
	public final static int STATUS_USER_NOT_EXIST = 4005;
	/**
	 * 手机号已经绑定
	 */
	public final static int STATUS_MOBILE_BINDED = 4006;
	/**
	 * 验证码已经发送
	 */
	public final static int STATUS_VERIFYCODE_SEND = 4007;
	/**
	 * 用户未登录/session过期
	 */
	public final static int STATUS_USER_NOT_LOGIN = 4008;
	
	
}
