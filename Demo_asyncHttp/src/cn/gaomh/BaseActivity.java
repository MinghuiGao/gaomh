package cn.gaomh;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

/**
 * 抽出一些基本的操作，及对网络请求相关的默认设置化。
 * 
 * @author dell
 * 
 */
abstract class BaseActivity extends Activity implements OnClickListener {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(setLayoutId());
		init();
		inflateView();
		setListener();
	}

	protected void init() {}

	@Override
	protected void onResume() {
		super.onResume();
	}

	abstract void setListener();

	/**
	 * 设置layout文件，初始化相关控件。
	 */
	abstract void inflateView();

	/**
	 * 设置布局id。
	 * 
	 * @return
	 */
	abstract int setLayoutId();

	@Override
	public void onClick(View v) {

	}
}
