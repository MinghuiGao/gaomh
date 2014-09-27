package cn.gaomh;

import com.loopj.android.http.sample.R;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

public class xckc_003Activity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.xckc_003);
		findViewById(R.id.bt_start_inspect).setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				Utils.load(xckc_003Activity.this, xckc_003_inspectionActivity.class);
			}
		});
	}
}
