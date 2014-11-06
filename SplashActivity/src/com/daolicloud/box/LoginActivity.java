package com.daolicloud.box;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.http.NameValuePair;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.daolicloud.box.env.Constant;
import com.daolicloud.box.env.MyApplication;
import com.daolicloud.box.requestVo.RequestVo;
import com.daolicloud.box.utils.CommonUtil;
import com.daolicloud.box.utils.MyUtil;

public class LoginActivity extends BaseActivity implements OnClickListener {
	
	private EditText et_username;
	private EditText et_password;
	private EditText et_check_code;
	private TextView tv_obtain_check_code;//来自服务器的校验码重新获取
	private ImageView tv_check;//校验码
	private TextView tv_login;
	private CheckBox cb_remember;
	private SharedPreferences sp;
	private Editor edit;
	private String username;
	private String password;

	
	@Override
	protected void onResume() {
		
		//想服务器获取校验码--成功，失败。
		Bitmap bitmap = MyUtil.getCheckCode(getApplication());
		if(bitmap != null){
			tv_check.setImageBitmap(bitmap);
		}else{
			//为空，失败
		}
		super.onResume();
	}
	
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.tv_obtain_check_code:
			Log.i("loginActivity", "tv_check");
			//想服务器发送获取校验码的请求
			onResume();
			break;
		case R.id.tv_login:
			String username = et_username.getText().toString();
			String password = et_password.getText().toString();
			String check_code = et_check_code.getText().toString();
			
			if (TextUtils.isEmpty(username) || TextUtils.isEmpty(password) ) {
				Toast.makeText(this,Constant.CANNOTEMPTY, 0).show();
				return;
			}
			if(TextUtils.isEmpty(check_code)){
				Toast.makeText(this,Constant.CHECKCANNOTEMPTY, 0).show();
				return;
			}
			edit = sp.edit();
			if(cb_remember.isChecked()){
				edit.putString("username", username);
				edit.putString("password", password);
			}else{
				edit.putString("username", "");
				edit.putString("password", "");
			}
			edit.commit();
			
			Map<String, String> map = new HashMap<String, String>();
			map.put("username", username);
			map.put("password", password);
			map.put("check", check_code);
			String result = null;
			ArrayList<NameValuePair> valuePaires = MyUtil.createNameValuePaires(map);
			RequestVo vo = new RequestVo(Constant.BASEURL+"login/", valuePaires);
			vo.setFilePath((String)CommonUtil.getMyAppMap(getApplication()).get("sessionid"));
			if(MyUtil.hasNet(LoginActivity.this)){
				Log.i("login", "hasNet"+ MyUtil.hasNet(LoginActivity.this));
				result = MyUtil.loginPost(vo,getApplication());
				if(result == "IOException") {
					Toast.makeText(LoginActivity.this, Constant.SERVERNETERROR, 0).show();
					this.finish();
					return;
				}
			}else{
				result = Constant.NETERRORMSG;
				Toast.makeText(LoginActivity.this, Constant.LOCALRNETERROR, 0).show();
				this.finish();
				return;
			}
			//判断是否登录成功需要在这里搞，现在只返回true
			if(result != null && !"".equals(result)){//登陆成功。
				((MyApplication) this.getApplication()).getAppMap().put("sessionId", result);
				((MyApplication) this.getApplication()).getAppMap().put("username", username);
//				((MyApplication) this.getApplication()).getAppMap().put("userid", result);
				this.finish();
				return;
			}
			
			Toast.makeText(LoginActivity.this, Constant.DENGLUSHIBAI, 0).show();
			this.finish();
			break;
		default:
			break;
		}
	}

	@Override
	public void processData() {
		// TODO Auto-generated method stub
		setContentView(R.layout.login_activity);
		
		tv_obtain_check_code = (TextView) findViewById(R.id.tv_obtain_check_code);
		tv_check = (ImageView) findViewById(R.id.tv_check);
		tv_obtain_check_code.setOnClickListener(this);
		tv_check.setOnClickListener(this);
		
		et_username = (EditText) findViewById(R.id.et_username);
		et_password = (EditText) findViewById(R.id.et_password);
		et_check_code = (EditText) findViewById(R.id.et_check_code);
		tv_login = (TextView) findViewById(R.id.tv_login);
		tv_login.setOnClickListener(this);
		cb_remember=(CheckBox) findViewById(R.id.cb_remember);
		tv_login.setOnClickListener(this);
		sp=getSharedPreferences("config", MODE_PRIVATE);
		et_username.setText(sp.getString("username", ""));
		et_password.setText(sp.getString("password", ""));
		cb_remember.setChecked(true);
	}
}
