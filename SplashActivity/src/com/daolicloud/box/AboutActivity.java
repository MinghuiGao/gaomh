package com.daolicloud.box;

import com.daolicloud.box.utils.LogUtil;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

public class AboutActivity extends BaseActivity {
	private Button bt_back2about;
	private String tag = "AboutActivity";

//	@Override
//	protected void onCreate(Bundle savedInstanceState) {
//		super.onCreate(savedInstanceState);
//
//	}

	/*
	 * //������ؼ�ص�����ҳ�� protected void back2Setting() { Intent intent=new
	 * Intent(); intent.setClass(this, SettingActivity.class);
	 * startActivity(intent); }
	 */
	@Override
	public void processData() {
		// TODO Auto-generated method stub
		setContentView(R.layout.about);
		bt_back2about = (Button) findViewById(R.id.bt_back2about);
		bt_back2about.setOnClickListener(new OnClickListener() {

			public void onClick(View v) {
				LogUtil.i(tag, "�������");
				AboutActivity.this.finish();
			}
		});
	}
}
