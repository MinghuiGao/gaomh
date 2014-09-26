package cn.gaomh;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

import com.loopj.android.http.sample.R;

public class LoginActivity extends Activity {
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.login);
		findViewById(R.id.bt_login).setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				loadMain();
			}
		});
	}
	
	private void loadMain() {
		Intent intent = new Intent(LoginActivity.this, MainActivity.class);
		LoginActivity.this.startActivity(intent);
		LoginActivity.this.finish();
	}
}
