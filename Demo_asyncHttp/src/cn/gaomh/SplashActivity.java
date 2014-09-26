package cn.gaomh;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;

import com.loopj.android.http.sample.R;

public class SplashActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		//
		setContentView(R.layout.splash);
		findViewById(R.id.tv_splash).setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				login();
			}

		});
	}

	private void login() {
		Intent intent = new Intent(SplashActivity.this, LoginActivity.class);
		SplashActivity.this.startActivity(intent);
		SplashActivity.this.finish();
	}
	
	private void activeAnimation(View view) {
		AlphaAnimation fadein = new AlphaAnimation(0f, 1.0f);
		fadein.setDuration(500);
		fadein.setFillAfter(true);
		fadein.setRepeatMode(Animation.REVERSE);
		fadein.setRepeatCount(1);
		view.startAnimation(fadein);
	}


}
