package com.daolicloud.box;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;

import com.daolicloud.box.utils.LogUtil;

public class SettingActivity extends BaseActivity implements OnClickListener {

	private Button bt_back2main;

	private RelativeLayout rl_setting_service;
	private RelativeLayout rl_setting_desklabel;
	private RelativeLayout rl_check_version;
	private RelativeLayout rl_aboutus;
	private ImageView iv_setting_serivce_on;
	private ImageView iv_setting_serivce_off;
	private ImageView iv_setting_desklabel_on;
	private ImageView iv_setting_desklabel_off;
	private ImageView iv_check_version_on;
	private ImageView iv_check_version_off;

	private SharedPreferences sp;
	private Editor edit;

	private boolean is_rl_setting_service_on = true;

	private boolean is_rl_setting_desklabel_on = true;

	private boolean is_check_version_on = true;

	private String tag = "SettingActivity";


	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.bt_back2main:
			this.finish();
			break;
		case R.id.rl_setting_service:
			Log.i(tag, "rl_setting_service" + is_rl_setting_service_on);
			if (is_rl_setting_service_on) {
				iv_setting_serivce_on.setVisibility(View.INVISIBLE);
				iv_setting_serivce_off.setVisibility(View.VISIBLE);
				is_rl_setting_service_on = false;
				edit.putBoolean("is_rl_setting_service_on",
						is_rl_setting_service_on);
			} else {
				iv_setting_serivce_on.setVisibility(View.VISIBLE);
				iv_setting_serivce_off.setVisibility(View.INVISIBLE);
				is_rl_setting_service_on = true;
				edit.putBoolean("is_rl_setting_service_on",
						is_rl_setting_service_on);
			}
			edit.commit();

			// 进行与开关相关的操作
			break;
		case R.id.rl_setting_desklabel:
			LogUtil.i(tag, "rl_setting_desklabel");
			if (is_rl_setting_desklabel_on) {
				iv_setting_desklabel_on.setVisibility(View.INVISIBLE);
				iv_setting_desklabel_off.setVisibility(View.VISIBLE);
				is_rl_setting_desklabel_on = false;
				edit.putBoolean("is_rl_setting_desklabel_on",
						is_rl_setting_desklabel_on);
			} else {
				iv_setting_desklabel_on.setVisibility(View.VISIBLE);
				iv_setting_desklabel_off.setVisibility(View.INVISIBLE);
				is_rl_setting_desklabel_on = true;
				edit.putBoolean("is_rl_setting_desklabel_on",
						is_rl_setting_desklabel_on);
			}

			edit.commit();
			// 进行与开关相关的操作

			break;

		case R.id.rl_check_version:
			LogUtil.i(tag, "rl_check_version");
			if (is_check_version_on) {
				iv_check_version_on.setVisibility(View.INVISIBLE);
				iv_check_version_off.setVisibility(View.VISIBLE);
				is_check_version_on = false;
				edit.putBoolean("is_check_version_on", is_check_version_on);
			} else {
				iv_check_version_on.setVisibility(View.VISIBLE);
				iv_check_version_off.setVisibility(View.INVISIBLE);
				is_check_version_on = true;
				edit.putBoolean("is_check_version_on", is_check_version_on);
			}

			edit.commit();
			// 进行与开关相关的操作

			break;

		case R.id.rl_aboutus:
			LogUtil.i(tag, "rl_aboutus");
			loadAboutActivity();
			break;

		default:
			break;
		}
	}

	// 进入关于界面
	private void loadAboutActivity() {
		Intent intent = new Intent();
		intent.setClass(this, AboutActivity.class);
		startActivity(intent);
	}

	@Override
	public void processData() {
		// TODO Auto-generated method stub
		setContentView(R.layout.setting);
		bt_back2main = (Button) findViewById(R.id.bt_back2main);
		rl_setting_service = (RelativeLayout) findViewById(R.id.rl_setting_service);
		rl_setting_desklabel = (RelativeLayout) findViewById(R.id.rl_setting_desklabel);
		rl_check_version = (RelativeLayout) findViewById(R.id.rl_check_version);
		rl_aboutus = (RelativeLayout) findViewById(R.id.rl_aboutus);

		iv_setting_serivce_on = (ImageView) findViewById(R.id.iv_setting_serivce_on);
		iv_setting_serivce_off = (ImageView) findViewById(R.id.iv_setting_serivce_off);
		iv_setting_desklabel_on = (ImageView) findViewById(R.id.iv_setting_desklabel_on);
		iv_setting_desklabel_off = (ImageView) findViewById(R.id.iv_setting_desklabel_off);
		iv_check_version_on = (ImageView) findViewById(R.id.iv_check_version_on);
		iv_check_version_off = (ImageView) findViewById(R.id.iv_check_version_off);
		sp = getSharedPreferences("config", MODE_PRIVATE);
		// getPreferences(MODE_PRIVATE);
		edit = sp.edit();

		is_rl_setting_service_on = sp.getBoolean("is_rl_setting_service_on",
				true);
		is_rl_setting_desklabel_on = sp.getBoolean(
				"is_rl_setting_desklabel_on", false);
		is_check_version_on = sp.getBoolean("is_check_version_on", true);
		if (is_rl_setting_service_on) {
			iv_setting_serivce_on.setVisibility(View.VISIBLE);
			iv_setting_serivce_off.setVisibility(View.INVISIBLE);
		} else {
			iv_setting_serivce_on.setVisibility(View.INVISIBLE);
			iv_setting_serivce_off.setVisibility(View.VISIBLE);
		}

		if (is_rl_setting_desklabel_on) {
			iv_setting_desklabel_on.setVisibility(View.VISIBLE);
			iv_setting_desklabel_off.setVisibility(View.INVISIBLE);
		} else {
			iv_setting_desklabel_on.setVisibility(View.INVISIBLE);
			iv_setting_desklabel_off.setVisibility(View.VISIBLE);
		}

		if (is_check_version_on) {
			iv_check_version_on.setVisibility(View.VISIBLE);
			iv_check_version_off.setVisibility(View.INVISIBLE);
		} else {
			iv_check_version_on.setVisibility(View.INVISIBLE);
			iv_check_version_off.setVisibility(View.VISIBLE);
		}

		bt_back2main.setOnClickListener(this);
		rl_setting_service.setOnClickListener(this);
		rl_setting_desklabel.setOnClickListener(this);
		rl_check_version.setOnClickListener(this);
		rl_aboutus.setOnClickListener(this);
	}

}
