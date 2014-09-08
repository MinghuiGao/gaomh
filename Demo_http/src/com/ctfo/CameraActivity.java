package com.ctfo;

import android.content.Intent;
import android.net.Uri;
import android.view.SurfaceView;
import android.widget.Toast;

import com.ctfo.mm.IMultipleCamera;
import com.ctfo.mm.MultipleCamera;
import com.ctfo.mm.SuperCamera;

public class CameraActivity extends BaseDemoActivity{

	private final String TAG = CameraActivity.class.getName() + " : gaomh";
	private SurfaceView mSurfaceViewRec;
	private IMultipleCamera mIMultipleCamera;
	@Override
	protected int[] getIds() {
		return new int[]{R.id.bt_start_recording,R.id.bt_stop_and_save,R.id.bt_upload,R.id.bt_take_pic};
	}

	@Override
	protected void onButtonClick(int id) {
		switch (id) {
		case R.id.bt_start_recording:
			mIMultipleCamera.startRecording();
			break;
		case R.id.bt_stop_and_save:
			String filePath = mIMultipleCamera.stopRecording();
			Toast.makeText(this	,filePath, Toast.LENGTH_SHORT).show();
			break;
		case R.id.bt_upload:
			mIMultipleCamera.turnOnFlash();
			break;
		case R.id.bt_take_pic:
			mIMultipleCamera.takePhoto();
			break;
		default:
			break;
		}
	}

	@Override
	protected int getContentViewId() {
		return R.layout.camera_layout;
	}

	@Override
	protected void onFinishInit() {
		mSurfaceViewRec = (SurfaceView) findViewById(R.id.sv_preview);
//		mIMultipleCamera = new MultipleCamera(CameraActivity.this, mSurfaceViewRec);
		mIMultipleCamera = new SuperCamera(CameraActivity.this);
	}
	
	@Override
	protected void onDestroy() {
		super.onDestroy();
		mIMultipleCamera.destory();
	}
	
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		if(data != null && data.getData() != null){
			Toast.makeText(this, "save successfully!", Toast.LENGTH_SHORT).show();
		}
	}
}
