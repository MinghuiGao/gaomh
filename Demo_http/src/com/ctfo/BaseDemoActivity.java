package com.ctfo;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

public abstract class BaseDemoActivity extends Activity implements OnClickListener{
	
	private int[] mBtnIds;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(getContentViewId());
		init();
		onFinishInit();
	}
	
	private void init() {
		mBtnIds = getIds();
		if(mBtnIds != null){
			for(int id : mBtnIds){
				findViewById(id).setOnClickListener(this);
			}
		}
	}


	@Override
	public void onClick(View v) {
		onButtonClick(v.getId());
	}

	protected abstract int[] getIds();
	protected abstract int getContentViewId();
	protected abstract void onFinishInit();
	protected abstract void onButtonClick(int id) ;	
	
}
