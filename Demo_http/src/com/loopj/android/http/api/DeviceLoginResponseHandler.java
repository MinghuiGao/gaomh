package com.loopj.android.http.api;

import org.apache.http.Header;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;

import com.ctfo.utils.PrefHelper;
import com.loopj.android.http.AsyncHttpResponseHandler;

public class DeviceLoginResponseHandler extends AsyncHttpResponseHandler {
	
	private static final String TAG = DeviceLoginResponseHandler.class.getName()+":gaomh";
	private Context mContext;
	
	public DeviceLoginResponseHandler(Context context){
		this.mContext = context;
	}
	
	@Override
	public void onSuccess(int statusCode, Header[] headers, byte[] responseBody) {
		if(statusCode == 200){
			// save sessionId .
			try{
				for(Header header : headers){
					if("sessionId".equals(header.getName())){
						String sessionId = header.getValue();
						PrefHelper.saveSessionId(mContext, sessionId);
					}
				}
			}catch (Exception e) {
				if(e instanceof NullPointerException)
					Log.e(TAG,"null pointer exception." );
			}
		}
	}

	@Override
	public void onFailure(int statusCode, Header[] headers,
			byte[] responseBody, Throwable error) {
//		switch (statusCode) {
//		case :
//			
//			break;
//
//		default:
//			break;
//		}
		
		Toast.makeText(mContext,"onFailure()",Toast.LENGTH_SHORT).show();
	}

}
