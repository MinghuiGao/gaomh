package cn.gaomh;

import com.loopj.android.http.sample.R;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

public class xcqz_005Activity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.xcqz_005);
		findViewById(R.id.bt_save).setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Utils.load(xcqz_005Activity.this, MainActivity.class);
			}
		});
	}
}
