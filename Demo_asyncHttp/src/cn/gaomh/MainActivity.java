package cn.gaomh;

import com.loopj.android.http.sample.R;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

public class MainActivity extends Activity implements OnClickListener {
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		setlistener();
	}

	private void setlistener() {
		findViewById(R.id.tv_RS002_002).setOnClickListener(this);
		findViewById(R.id.tv_RS002_003).setOnClickListener(this);
		findViewById(R.id.tv_RS002_004).setOnClickListener(this);
		findViewById(R.id.tv_RS002_005).setOnClickListener(this);
		findViewById(R.id.tv_RS002_006).setOnClickListener(this);
		findViewById(R.id.tv_RS002_007).setOnClickListener(this);
		findViewById(R.id.tv_RS002_008).setOnClickListener(this);
	}

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.tv_RS002_002:
			loadMenu(qyxxcx002Activity.class);
			break;
		case R.id.tv_RS002_003:
		case R.id.tv_RS002_004:
			loadMenu(xckc_003Activity.class);
			break;
		case R.id.tv_RS002_005:
			loadMenu(xcqz_005Activity.class);
			break;
		case R.id.tv_RS002_006:
			
			break;
		case R.id.tv_RS002_007:
			loadMenu(ewxxcx_007Activity.class);
			break;
		case R.id.tv_RS002_008:
			
			break;

		default:
			break;
		}
	}
	
	private void loadMenu(Class activityClazz){
		Intent intent  = new Intent(MainActivity.this,activityClazz);
		MainActivity.this.startActivity(intent);
		this.finish();
	}
	
	
}
