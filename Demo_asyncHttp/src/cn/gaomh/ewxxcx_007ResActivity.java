package cn.gaomh;

import com.loopj.android.http.sample.R;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

public class ewxxcx_007ResActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.ewxxcx_007_result);
		findViewById(R.id.bt_qyxxcx_back).setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Utils.load(ewxxcx_007ResActivity.this,MainActivity.class );
			}
		});
	}
}
