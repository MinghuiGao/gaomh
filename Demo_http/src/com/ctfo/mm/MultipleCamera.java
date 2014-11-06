package com.ctfo.mm;

import java.io.IOException;

import com.ctfo.constants.Config;
import com.ctfo.utils.DateUtils;

import android.app.Activity;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.os.Environment;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.widget.Toast;

/**
 * 功能描述
 * 
 * @类型名称 MultipleCamera
 * @版本 1.0
 * @创建者 gaomh
 * @创建时间 Sep 1, 2014 3:29:53 PM
 * @版权所有 ©2014 CTFO
 * @修改者 gaomh
 * @修改时间 Sep 1, 2014 3:29:53 PM
 * @修改描述
 */
public class MultipleCamera implements IMultipleCamera {
	private final String TAG = MultipleCamera.class.getName() + "gaomh";
	private Camera mCamera;
	private SurfaceView mSurfaceView;
	private SurfaceHolder mSurfaceHolder;
	public boolean mIsRecording = false;
	private MediaRecorder mediaRecorder;
	private CamcorderProfile mProfile;
	private Activity mContext;
	
	private String mStringVideoPath ;
	
	public MultipleCamera(Activity context ,SurfaceView sv){
		this.mContext = context;
		this.mSurfaceView = sv;
		mStringVideoPath = Environment.getExternalStorageDirectory().getPath()+Config.FILE_START_NAME+DateUtils.getTimeStamp()+Config.VIDEO_EXTENSION;
		Log.d(TAG, mStringVideoPath);
		mSurfaceHolder = mSurfaceView.getHolder();
		mSurfaceHolder.addCallback(new Callback() {
			@Override
			public void surfaceDestroyed(SurfaceHolder holder) {
				releaseCamera();
			}
			
			@Override
			public void surfaceCreated(SurfaceHolder holder) {
				initpreview();
			}
			
			@Override
			public void surfaceChanged(SurfaceHolder holder, int format, int width,
					int height) {
			}
		});
	}
	
	protected void releaseCamera() {
		if(mCamera!=null){
			mCamera.stopPreview();
			mCamera.release();
			mCamera = null;
		}
	}
	
	protected void initpreview() {
		// exception occurs when the camera was ocupied. 
		try{
			mCamera = Camera.open(CameraInfo.CAMERA_FACING_BACK);
		}catch(Exception e){
			Toast.makeText(mContext, "camera error!", Toast.LENGTH_SHORT).show();
		}
		try {
			mCamera.setPreviewDisplay(mSurfaceHolder);
		} catch (IOException e) {
			e.printStackTrace();
		}
		setCameraDisplayOrientation(mContext,CameraInfo.CAMERA_FACING_BACK,mCamera);
		mCamera.startPreview();
	}
	
	 public static void setCameraDisplayOrientation(Activity activity,
	         int cameraId, android.hardware.Camera camera) {
	     android.hardware.Camera.CameraInfo info =
	             new android.hardware.Camera.CameraInfo();
	     android.hardware.Camera.getCameraInfo(cameraId, info);
	     int rotation = activity.getWindowManager().getDefaultDisplay()
	             .getRotation();
	     int degrees = 0;
	     switch (rotation) {
	         case Surface.ROTATION_0: degrees = 0; break;
	         case Surface.ROTATION_90: degrees = 90; break;
	         case Surface.ROTATION_180: degrees = 180; break;
	         case Surface.ROTATION_270: degrees = 270; break;
	     }

	     int result;
	     if (info.facing == Camera.CameraInfo.CAMERA_FACING_FRONT) {
	         result = (info.orientation + degrees) % 360;
	         result = (360 - result) % 360;  // compensate the mirror
	     } else {  // back-facing
	         result = (info.orientation - degrees + 360) % 360;
	     }
	     camera.setDisplayOrientation(result);
	 }
	
	 /**
		 * 功能描述： 
		 * @版本 1.0
		 * @创建者 gaomh
		 * @创建时间 Sep 1, 2014 5:02:47 PM
		 * @版权所有 ©2014 CTFO
		 * @修改者 gaomh
		 * @修改时间 Sep 1, 2014 5:02:47 PM
		 * 修改描述 
		 */
		public void startmediaRecorder() {
			mIsRecording = true;
			mCamera.unlock();
			mProfile = CamcorderProfile.get(CameraInfo.CAMERA_FACING_BACK, CamcorderProfile.QUALITY_LOW);
			
//			mProfile.audioCodec = MediaRecorder.AudioEncoder.AMR_NB;
			// set this to make sure the video encoder.test is ok.
			mProfile.videoCodec = MediaRecorder.VideoEncoder.H264;
			
			boolean isAMR_NB = mProfile.audioCodec == MediaRecorder.AudioEncoder.AMR_NB;
			boolean isH264 = mProfile.videoCodec == MediaRecorder.VideoEncoder.H264;
			Toast.makeText(mContext, "AMR_NB : "+ isAMR_NB + " isH264 : "+ isH264, Toast.LENGTH_SHORT).show();
			
			//1st
			mediaRecorder = new MediaRecorder();
			mediaRecorder.setCamera(mCamera);
			
			//2nd 
			mediaRecorder.setAudioSource(MediaRecorder.AudioSource.CAMCORDER);
			mediaRecorder.setVideoSource(MediaRecorder.VideoSource.CAMERA);
			
			//3rd 
//			mediaRecorder.setOutputFormat(mProfile.fileFormat);
			mediaRecorder.setOutputFormat(MediaRecorder.OutputFormat.MPEG_4);
			mediaRecorder.setAudioEncoder(mProfile.audioCodec);
			mediaRecorder.setVideoEncoder(mProfile.videoCodec);
			mediaRecorder.setOutputFile(mStringVideoPath);  
			mediaRecorder.setVideoSize(mProfile.videoFrameWidth, mProfile.videoFrameHeight);  
			mediaRecorder.setVideoFrameRate(mProfile.videoFrameRate);  
			mediaRecorder.setVideoEncodingBitRate(mProfile.videoBitRate);  
			mediaRecorder.setAudioEncodingBitRate(mProfile.audioBitRate);  
			mediaRecorder.setAudioChannels(mProfile.audioChannels);  
			mediaRecorder.setAudioSamplingRate(mProfile.audioSampleRate); 
			
			mediaRecorder.setPreviewDisplay(mSurfaceHolder.getSurface());
			
			try{
				mediaRecorder.prepare();
				mediaRecorder.start();
			}catch(IllegalStateException e){
				e.printStackTrace();
			} catch (IOException e) {
				Log.e(TAG,"ioException when mediaRecorder.prepare() : gaomh" );
				e.printStackTrace();
			}
			
		}
		
		public void stopmediaRecorder() {
			if(mediaRecorder!=null){
				if(mIsRecording){
					mediaRecorder.stop();
					mediaRecorder.reset();
					mediaRecorder.release();
					mediaRecorder=null;
					mIsRecording = false;
					try {
						mCamera.reconnect();
					} catch (IOException e) {
						Toast.makeText(mContext, "reconect fail", 0).show();
						e.printStackTrace();
					}
				}
			}
		}

		private void setFlashMode(String flashMode){
			Camera.Parameters params = mCamera.getParameters();
			params.setFlashMode(flashMode);
			mCamera.setParameters(params);
		}
		
		@Override
		public void startRecording() {
			if(!mIsRecording){
				startmediaRecorder();
			}
		}

		@Override
		public void pauseRecording() {
			
		}

		@Override
		public String stopRecording() {
			if(mIsRecording){
				stopmediaRecorder();
			}
			return mStringVideoPath;
		}

		@Override
		public void replay() {
			
		}

		@Override
		public void saveToLocal() {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void upload() {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void takePhoto() {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void turnOnFlash() {
			setFlashMode(Camera.Parameters.FLASH_MODE_TORCH);
		}

		@Override
		public void turnOffFlash() {
			setFlashMode(Camera.Parameters.FLASH_MODE_OFF);
		}

		@Override
		public void flash() {
			setFlashMode(Camera.Parameters.FLASH_MODE_ON);
		}

		@Override
		public void destory() {
			releaseCamera();
		}
		
}
