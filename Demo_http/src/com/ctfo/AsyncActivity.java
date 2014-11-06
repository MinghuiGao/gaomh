package com.ctfo;

import java.io.UnsupportedEncodingException;

import org.apache.http.Header;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;

import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;

public class AsyncActivity extends Activity implements OnClickListener {
	private final String TAG = "gaomh";

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.async_test);

		init();

	}

	private void init() {
		findViewById(R.id.bt_get).setOnClickListener(this);
		findViewById(R.id.bt_post).setOnClickListener(this);
		findViewById(R.id.bt_get_pic).setOnClickListener(this);
		findViewById(R.id.bt_upload).setOnClickListener(this);
		findViewById(R.id.bt_login).setOnClickListener(this);
		findViewById(R.id.bt_camera).setOnClickListener(this);
	}

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.bt_login:
			
			break;
		case R.id.bt_get:
			AsyncHttpClient client = new AsyncHttpClient();
			client.get("http://192.168.4.28:8090/client_test/rtn_json",
					new AsyncHttpResponseHandler() {
						@Override
						public void onSuccess(int statusCode, Header[] headers,
								byte[] responseBody) {
							Log.d(TAG, "statusCode : " + statusCode);
							for (Header header : headers) {
								Log.d(TAG,
										header.getName() + " : "
												+ header.getValue());
							}
							try {
								String res = new String(responseBody, "utf-8");
								Log.d(TAG, "responseBodey : " + res);
							} catch (UnsupportedEncodingException e) {
								e.printStackTrace();
							}
						}

						@Override
						public void onFailure(int statusCode, Header[] headers,
								byte[] responseBody, Throwable error) {
							// can not connect to server ; status code : 0.
							Log.d(TAG, "statusCode : " + statusCode);
							try {
								for (Header header : headers) {
									Log.d(TAG, header.getName() + " : "
											+ header.getValue());
								}
								String res = new String(responseBody, "utf-8");
								Log.d(TAG, "responseBodey : " + res);
							} catch (UnsupportedEncodingException e) {
								e.printStackTrace();
							}catch (NullPointerException e){
								Log.e(TAG, "can not connect to server!");
							}
						}
					});
			break;
		case R.id.bt_get_pic:
			break;
		case R.id.bt_post:
			
			break;
		case R.id.bt_upload:
			break;
		case R.id.bt_camera:
			Intent intent = new Intent(AsyncActivity.this,CameraActivity.class);
			startActivity(intent);
			break;
		default:
			break;
		}
	}

}
