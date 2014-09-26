package com.ctfo.constants;

import android.os.Environment;


public class Config {
	public static final String HOST = "http://192.168.4.28:8090/client_test";
	public static final String CACHE_DIR = null;
	public static final String BASE_PATH = Environment.getExternalStorageDirectory().getAbsolutePath();
	
	public final static String FILE_START_NAME = "/ctfo_test_";
	public final static String VIDEO_EXTENSION = ".mp4";
	public final static String PHOTO_EXTENSION = ".jpeg";
//	public final static String DCIM_FOLDER = "/DCIM";
	public final static String VIDEO_FOLDER = "/Video_ctfo";
	public final static String PHOTO_FOLDER = "/Photo_ctfo";
//	public final static String CAMERA_FOLDER_PATH = Environment.getExternalStorageDirectory().toString() + Config.DCIM_FOLDER + Config.CAMERA_FOLDER;

}
