package cn.gaomh;

import android.app.Activity;
import android.content.Intent;

public class Utils {

	public static void load(Activity activity , Class clazz){
		Intent intent  = new Intent(activity,clazz);
		activity.startActivity(intent);
		activity.finish();
	}
	
}
