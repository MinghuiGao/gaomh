package com.ctfo.mm;

import java.io.File;
import java.io.IOException;

import com.ctfo.constants.Config;
import com.ctfo.utils.DateUtils;

import android.app.Activity;
import android.content.Intent;
import android.media.CamcorderProfile;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;

public class SuperCamera implements IMultipleCamera {
	
	private Activity mContext;
	
	private String mStringFilePath;
	
	public SuperCamera(Activity context){
		this.mContext = context;
		
	}

	@Override
	public void startRecording() {
		Intent startRecording = new Intent();
		startRecording.setAction(MediaStore.ACTION_VIDEO_CAPTURE);
		startRecording.addCategory(Intent.CATEGORY_DEFAULT);
//		mStringFilePath = Config.BASE_PATH +Config.CAMERA_FOLDER;
		String folderPath = Environment.getExternalStorageDirectory().getAbsolutePath() + Config.VIDEO_FOLDER;
		System.out.println("folder path : "+ folderPath);
		File cacheFolder = new File(folderPath);
		if(!cacheFolder.exists()){
			cacheFolder.mkdir();
		}
		String fileName = DateUtils.getTimeStamp()+Config.VIDEO_EXTENSION;
		mStringFilePath = cacheFolder.getAbsolutePath()+ "/" + fileName;
		System.out.println("gaomh : "+ mStringFilePath);
		File file = new File(mStringFilePath);
		if(!file.exists()){
			try {
				file.createNewFile();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		Uri uri = Uri.fromFile(file);
		startRecording.putExtra(MediaStore.EXTRA_OUTPUT, uri);
		startRecording.putExtra(MediaStore.EXTRA_VIDEO_QUALITY, CamcorderProfile.QUALITY_720P);
//		startRecording.putExtra(MediaStore.EXTRA_SIZE_LIMIT, 640*480);
		mContext.startActivityForResult(startRecording, 0);
	}

	@Override
	public void pauseRecording() {
		
	}

	@Override
	public String stopRecording() {
		return null;
	}

	@Override
	public void replay() {
		
	}

	@Override
	public void saveToLocal() {
		
	}

	@Override
	public void upload() {
		
	}

	@Override
	public void takePhoto() {
		String folderPath = Environment.getExternalStorageDirectory().getAbsolutePath() + Config.PHOTO_FOLDER;
		File cacheFolder = new File(folderPath);
		if(!cacheFolder.exists()){
			cacheFolder.mkdir();
		}
		String fileName = DateUtils.getTimeStamp()+Config.PHOTO_EXTENSION;
		mStringFilePath = cacheFolder.getAbsolutePath()+ "/" + fileName;
		File file = new File(mStringFilePath);
		if(!file.exists()){
			try {
				file.createNewFile();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		Intent takePic = new Intent();
		takePic.setAction(MediaStore.ACTION_IMAGE_CAPTURE);
		takePic.addCategory(Intent.CATEGORY_DEFAULT);
		Uri uri = Uri.fromFile(file);
		takePic.putExtra(MediaStore.EXTRA_OUTPUT, uri);
		mContext.startActivityForResult(takePic, 0);
	}

	@Override
	public void turnOnFlash() {
		
	}

	@Override
	public void turnOffFlash() {
		
	}

	@Override
	public void flash() {
		
	}

	@Override
	public void destory() {
		
	}

	public String getFilePath(){
		return this.mStringFilePath;
	}
	
}
