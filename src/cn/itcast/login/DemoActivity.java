package cn.itcast.login;

import java.util.Map;

import cn.itcast.login.service.FileService;
import android.app.Activity;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.Toast;

public class DemoActivity extends Activity implements OnClickListener {
	private EditText et_name;
	private EditText et_password;
	private Button bt_login;
	private CheckBox cb_rememeber;
	private RadioGroup rg;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		et_name = (EditText) findViewById(R.id.et_name);
		et_password = (EditText) findViewById(R.id.et_password);
		bt_login = (Button) findViewById(R.id.bt_login);
		cb_rememeber = (CheckBox) findViewById(R.id.cb_remember);
		rg = (RadioGroup) findViewById(R.id.rg);
		
		Map<String, String> map = FileService.readFromRom(this, "rom.txt");
		if (map != null) {
			String name = map.get("name");
			String password = map.get("password");
			et_name.setText(name);
			et_password.setText(password);
		}
		
		bt_login.setOnClickListener(this);
	}

	@Override
	public void onClick(View v) {
		if (v == bt_login) {// 按钮被点击了
			String name = et_name.getText().toString().trim();
			String password = et_password.getText().toString().trim();
			if (TextUtils.isEmpty(password) || TextUtils.isEmpty(name)) {
				Toast.makeText(this, "用户名或者密码不能为空", 0).show();
				return;
			}

			// 判断checkbox的状态.
			if (cb_rememeber.isChecked()) {
				int id = rg.getCheckedRadioButtonId();
				//if the button is not clicked assign a default selected button..
				if(id==-1){
					id = R.id.rb_rom;
				}
				
				boolean result =false;
				
				switch (id) {
				case R.id.rb_rom:
					// 持久化用户名和密码
					result = FileService.saveToRom(this, "rom.txt",
							name, password);
					break;

				case R.id.rb_cache:
					result = FileService.saveToRomCache(this, "cache.txt",
							name, password);
					break;
				case R.id.rb_sd:
					//判断一下sd的状态//获取外部存储sd卡的状态.
					if(Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())){
						result = FileService.saveToSD(this, "sd.txt",
								name, password);
					}else{
						Toast.makeText(this, "sd卡不可用,请检查sd卡的状态", 0).show();
					}
					
					break;
				}
				
				if (result) {
					Toast.makeText(this, "保存成功", 0).show();
				} else {
					Toast.makeText(this, "保存失败", 0).show();
				}
			}

			if ("zhangsan".equals(name) && "123".equals(password)) {
				Toast.makeText(this, "登陆成功", 0).show();
			} else {
				Toast.makeText(this, "用户名或者密码错误", 0).show();
			}
		}
	}
}
