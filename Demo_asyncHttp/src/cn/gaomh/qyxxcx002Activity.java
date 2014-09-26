package cn.gaomh;

import com.loopj.android.http.sample.R;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;

public class qyxxcx002Activity extends Activity {
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.qyxxcx002);
		findViewById(R.id.bt_query).setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Utils.load(qyxxcx002Activity.this, qyxxcx002ResActivity.class);
			}
		});
	}
	
}
