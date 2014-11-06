package cn.gaomh;

import com.loopj.android.http.sample.R;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

public class xckc_003_inspectionActivity extends Activity {
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.xckc_003_inspection);
		findViewById(R.id.bt_next_step).setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Utils.load(xckc_003_inspectionActivity.this, xckc_003_completionActivity.class);
			}
		});
	}
}
