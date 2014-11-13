package com.daolicloud.box.service;

import java.util.Map;

import com.daolicloud.box.env.Constant;
import com.daolicloud.box.env.MyApplication;
import com.daolicloud.box.requestVo.RequestVo;
import com.daolicloud.box.utils.CommonUtil;
import com.daolicloud.box.utils.LogUtil;
import com.daolicloud.box.utils.MyUtil;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;

public class UpLoadFileIntentService extends IntentService{

	public UpLoadFileIntentService(String name) {
		super(name);
	}

	public UpLoadFileIntentService(){
		super("UpLoadFileIntentService");
	}

	@Override
	public void onCreate() {
		super.onCreate();
	}

	@Override
	protected void onHandleIntent(Intent intent) {
		Bundle bundle = intent.getExtras();
		String tag = bundle.getString("vo");
		RequestVo vo = (RequestVo) CommonUtil.getMyAppMap(this.getApplication()).get(tag);
		Message msg = Message.obtain();
		msg.what = Constant.UPLOADING;
		msg.obj = vo.getFilePath();
		LogUtil.uploadI("upload in service -- url :"+ vo.getUrl());
		vo.getHandler().sendMessage(msg);
		Message msg2 = Message.obtain();
		msg2.what = MyUtil.upload(vo,"filename")?Constant.SUCCESS:Constant.FAILED;
		LogUtil.uploadI("upload in service --result :(success 1001)"+msg2.what);
		msg2.obj = vo.getFilePath();
		vo.getHandler().sendMessage(msg2);
	}
}
