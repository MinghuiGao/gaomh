package com.ctfo.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Method;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.PowerManager;
import android.provider.Settings;
import android.provider.Settings.SettingNotFoundException;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;


/** 
 * 功能描述 
 * @类型名称 DeviceUtil
 * @版本 1.0
 * @创建者 gaomh
 * @创建时间 Aug 29, 2014 3:15:28 PM
 * @版权所有 ©2014 CTFO
 * @修改者 gaomh
 * @修改时间 Aug 29, 2014 3:15:28 PM
 * @修改描述 
 */
public final class DeviceUtil {

	/**
	 * <p><b>IMEI.</b></p> Returns the unique device ID, for example, the IMEI for GSM and the MEID
	 * or ESN for CDMA phones. Return null if device ID is not available.
	 * 
	 * Requires Permission: READ_PHONE_STATE
	 * 
	 * @param context
	 * @return
	 */
	public synchronized static String getDeviceId(Context context) {
		if (context == null) {
			return "";
		}
		
		TelephonyManager tm = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
		if (tm == null || TextUtils.isEmpty(tm.getDeviceId())) {
			// 双卡双待需要通过phone1和phone2获取imei，默认取phone1的imei。
			tm = (TelephonyManager) context.getSystemService("phone1");
		}
		
		String imei = null;
		if (tm != null) {
			imei = tm.getDeviceId();
		}
		
		return imei;
	}

	/**
	 * Returns the serial number of the SIM, if applicable. Return null if it is
	 * unavailable.
	 * 
	 * Requires Permission: READ_PHONE_STATE
	 * 
	 * @param context
	 * @return
	 */
	public synchronized static String getSimSerialNumber(Context context) {
		if (context == null) {
			return "";
		}
		final TelephonyManager tm = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
		return tm.getSimSerialNumber();
	}

	/**
	 * A 64-bit number (as a hex string) that is randomly generated on the
	 * device's first boot and should remain constant for the lifetime of the
	 * device. (The value may change if a factory reset is performed on the
	 * device.)
	 * 
	 * @param context
	 * @return
	 */
	public synchronized static String getAndroidID(Context context) {
		return android.provider.Settings.Secure.getString(context.getContentResolver(),
				android.provider.Settings.Secure.ANDROID_ID);
	}

	/**
	 * 操作系统版本
	 * 
	 * @return
	 */
	public static String getOSversion() {
		return android.os.Build.VERSION.RELEASE;
	}

	/**
	 * 设备商
	 * 
	 * @return
	 */
	public static String getManufacturer() {
		return android.os.Build.MANUFACTURER;
	}

	/**
	 * 设备型号
	 * 
	 * @return
	 */
	public static String getModel() {
		return android.os.Build.MODEL;
	}

	/**
	 * 序列号
	 * 
	 * @return
	 */
	public static String getSerialNumber() {
		String serial = null;
		try {
			Class<?> c = Class.forName("android.os.SystemProperties");
			Method get = c.getMethod("get", String.class);
			serial = (String) get.invoke(c, "ro.serialno");
		} catch (Exception ignored) {
		}
		return serial;
	}

	/**
	 * SD CARD ID
	 * 
	 * @return
	 */
	public static synchronized String getSDcardID() {
		try {
			String sdCid = null;
			String[] memBlkArray = new String[] { "/sys/block/mmcblk0", "/sys/block/mmcblk1", "/sys/block/mmcblk2" };
			for (String memBlk : memBlkArray) {
				File file = new File(memBlk);
				if (file.exists() && file.isDirectory()) {
					Process cmd = Runtime.getRuntime().exec("cat " + memBlk + "/device/cid");
					BufferedReader br = new BufferedReader(new InputStreamReader(cmd.getInputStream()));
					sdCid = br.readLine();
					if (!TextUtils.isEmpty(sdCid)) {
						return sdCid;
					}
				}
			}
			return null;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 获取mac地址
	 * 
	 * @param context
	 * @return
	 */
	public static String getMac(Context context) {
		if (context == null) {
			return "";
		}
		String mac = null;
		try {
			final WifiManager wifi = (WifiManager) context.getSystemService(Context.WIFI_SERVICE);
			if (wifi != null) {
				WifiInfo info = wifi.getConnectionInfo();
				if (null != info && info.getMacAddress() != null) {
					mac = info.getMacAddress();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mac;
	}

	/**
	 * 获取屏幕的分辨率
	 * @param context
	 * @return int array with 2 items. The first item is width, and the second is height.
	 */
	public static int[] getScreenResolution(Context context) {
		DisplayMetrics dm = context.getResources().getDisplayMetrics();
		
		int[] resolution = new int[2];
		resolution[0] = dm.widthPixels;
		resolution[1] = dm.heightPixels;
		
		return resolution;
	}
	
	/**
	 * 获取WIFI的Mac地址
	 * @param context
	 * @return Wifi的BSSID即mac地址
	 */
	public static String getWifiBSSID(Context context) {
		if (context == null) {
			return null;
		}
		
		String mac = null;
		WifiManager wm = (WifiManager) context.getSystemService(Context.WIFI_SERVICE);
		WifiInfo info = wm.getConnectionInfo();
		if (info != null) {
			mac = info.getBSSID();// 获得本机的MAC地址
		}
		
		return mac;
	}
	
	public static String getPackageVersion(Context context) {
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packInfo;
        try {
            packInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
            return packInfo.versionName;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
        }

        return null;
	}
	
    /**
     * 获取系统休眠时间。
     * @return
     */
    public static int getScreenOffTimeOut(Context context){
    	int sleepTime;
		try {
			sleepTime = Settings.System.getInt(context.getContentResolver(),Settings.System.SCREEN_OFF_TIMEOUT);	
		} catch (SettingNotFoundException e) {
			e.printStackTrace();
			sleepTime = 15*1000;
		}
		return sleepTime;
    }
	
    public static boolean isScreenOn(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
        return powerManager.isScreenOn();
    }
    
    public static boolean isDeviceLoggedin(Context context){
    	String sessionId = PrefHelper.getSessionId(context);
    	if(sessionId == null || "".equals(sessionId)){
    		return false;
    	}else{
    		return true;
    	}
    }
    
}
