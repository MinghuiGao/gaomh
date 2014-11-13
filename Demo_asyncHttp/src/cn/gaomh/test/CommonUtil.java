<<<<<<< HEAD
package cn.gaomh.test;

import java.util.Map;

import com.daolicloud.box.env.Constant;
import com.daolicloud.box.env.MyApplication;

import android.app.AlertDialog;
import android.app.Application;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;

public class CommonUtil {
	
	public static void showInfoDialog(Context context, String message) {
		showInfoDialog(context, message, Constant.HINT, Constant.OK, null);
	}

	/**
	 * @param context
	 * @param message
	 * @param titleStr
	 * @param positiveStr
	 * @param onClickListener
	 */
	public static void showInfoDialog(Context context, String message,
			String titleStr, String positiveStr,
			DialogInterface.OnClickListener onClickListener) {
		AlertDialog.Builder localBuilder = new AlertDialog.Builder(context);
		localBuilder.setTitle(titleStr);
		localBuilder.setMessage(message);
		if (onClickListener == null)
			onClickListener = new DialogInterface.OnClickListener() {
				public void onClick(DialogInterface dialog, int which) {

				}
			};
		localBuilder.setPositiveButton(positiveStr, onClickListener);
		localBuilder.show();
	}

	/**
	 * @param context
	 * @param message
	 * @param titleStr
	 * @param positiveStr
	 * @param positiveListener
	 * @param nagetiveStr
	 * @param negativeListener
	 */
	public static void showInfoDialogWithButton(Context context,
			String message, String titleStr, String positiveStr,
			DialogInterface.OnClickListener positiveListener,
			String nagetiveStr, DialogInterface.OnClickListener negativeListener) {
		AlertDialog.Builder localBuilder = new AlertDialog.Builder(context);
		localBuilder.setTitle(titleStr);
		localBuilder.setMessage(message);
		if (positiveListener == null)
			positiveListener = new DialogInterface.OnClickListener() {
				public void onClick(DialogInterface dialog, int which) {
				}
			};
		localBuilder.setPositiveButton(positiveStr, positiveListener);
		if (negativeListener == null)
			negativeListener = new DialogInterface.OnClickListener() {
				public void onClick(DialogInterface dialog, int which) {
				}
			};
		localBuilder.setNegativeButton(nagetiveStr, negativeListener);
		localBuilder.show();
	}

//	/**
//	 * 
//	 * @param context
//	 * @param titleStr //选择添加的目录
//	 * @param view  含有listview的View
//	 * @param positiveStr
//	 * @param positiveListener
//	 * @param nagetiveStr
//	 * @param negativeListener
//	 */
//	public static void showListViewDialog(
//			Context context,
//			String titleStr,
//			View view,
//			String positiveStr,
//			DialogInterface.OnClickListener positiveListener,//向指定的目录发送上传请求。
//			String nagetiveStr, 
//			DialogInterface.OnClickListener negativeListener//取消
//			){
//		AlertDialog.Builder localBuilder = new AlertDialog.Builder(context);
//		localBuilder.setTitle(titleStr);
//		AlertDialog alertDialog = localBuilder.create();
//		ListView lv_file_list = view.findViewById(R.id.)
//		alertDialog.setView(view, 0, 0, 0, 0);
//		
//	}
	
	
	
	public static Map<String, Object> getMyAppMap(Application application){
		MyApplication myApplication = (MyApplication) application;
		Map<String, Object> appMap = myApplication.getAppMap();
		return appMap;
	}
	
	
}
=======
//package cn.gaomh.test;
//
//import java.util.Map;
//
//import com.daolicloud.box.env.Constant;
//import com.daolicloud.box.env.MyApplication;
//
//import android.app.AlertDialog;
//import android.app.Application;
//import android.content.Context;
//import android.content.DialogInterface;
//import android.view.View;
//
//public class CommonUtil {
//	
//	public static void showInfoDialog(Context context, String message) {
//		showInfoDialog(context, message, Constant.HINT, Constant.OK, null);
//	}
//
//	/**
//	 * @param context
//	 * @param message
//	 * @param titleStr
//	 * @param positiveStr
//	 * @param onClickListener
//	 */
//	public static void showInfoDialog(Context context, String message,
//			String titleStr, String positiveStr,
//			DialogInterface.OnClickListener onClickListener) {
//		AlertDialog.Builder localBuilder = new AlertDialog.Builder(context);
//		localBuilder.setTitle(titleStr);
//		localBuilder.setMessage(message);
//		if (onClickListener == null)
//			onClickListener = new DialogInterface.OnClickListener() {
//				public void onClick(DialogInterface dialog, int which) {
//
//				}
//			};
//		localBuilder.setPositiveButton(positiveStr, onClickListener);
//		localBuilder.show();
//	}
//
//	/**
//	 * @param context
//	 * @param message
//	 * @param titleStr
//	 * @param positiveStr
//	 * @param positiveListener
//	 * @param nagetiveStr
//	 * @param negativeListener
//	 */
//	public static void showInfoDialogWithButton(Context context,
//			String message, String titleStr, String positiveStr,
//			DialogInterface.OnClickListener positiveListener,
//			String nagetiveStr, DialogInterface.OnClickListener negativeListener) {
//		AlertDialog.Builder localBuilder = new AlertDialog.Builder(context);
//		localBuilder.setTitle(titleStr);
//		localBuilder.setMessage(message);
//		if (positiveListener == null)
//			positiveListener = new DialogInterface.OnClickListener() {
//				public void onClick(DialogInterface dialog, int which) {
//				}
//			};
//		localBuilder.setPositiveButton(positiveStr, positiveListener);
//		if (negativeListener == null)
//			negativeListener = new DialogInterface.OnClickListener() {
//				public void onClick(DialogInterface dialog, int which) {
//				}
//			};
//		localBuilder.setNegativeButton(nagetiveStr, negativeListener);
//		localBuilder.show();
//	}
//
////	/**
////	 * 
////	 * @param context
////	 * @param titleStr //选择添加的目录
////	 * @param view  含有listview的View
////	 * @param positiveStr
////	 * @param positiveListener
////	 * @param nagetiveStr
////	 * @param negativeListener
////	 */
////	public static void showListViewDialog(
////			Context context,
////			String titleStr,
////			View view,
////			String positiveStr,
////			DialogInterface.OnClickListener positiveListener,//向指定的目录发送上传请求。
////			String nagetiveStr, 
////			DialogInterface.OnClickListener negativeListener//取消
////			){
////		AlertDialog.Builder localBuilder = new AlertDialog.Builder(context);
////		localBuilder.setTitle(titleStr);
////		AlertDialog alertDialog = localBuilder.create();
////		ListView lv_file_list = view.findViewById(R.id.)
////		alertDialog.setView(view, 0, 0, 0, 0);
////		
////	}
//	
//	
//	
//	public static Map<String, Object> getMyAppMap(Application application){
//		MyApplication myApplication = (MyApplication) application;
//		Map<String, Object> appMap = myApplication.getAppMap();
//		return appMap;
//	}
//	
//	
//}
>>>>>>> 9f2768713ec448f9573270ebbabf5cf6f80772f2
