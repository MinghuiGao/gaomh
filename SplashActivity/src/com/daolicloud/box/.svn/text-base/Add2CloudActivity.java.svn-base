package com.daolicloud.box;

import android.app.Activity;
import android.os.Bundle;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;

public class Add2CloudActivity extends Activity {
	Animation ta ;
	private LinearLayout ll_add2cloud_main;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.add2cloud);
		ta = AnimationUtils.loadAnimation(Add2CloudActivity.this, R.anim.tran_in);
		
		ll_add2cloud_main = (LinearLayout) findViewById(R.id.ll_add2cloud_main);
		ll_add2cloud_main.startAnimation(ta);
	}
}
