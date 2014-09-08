package com.loopj.android.http.api;

import java.io.UnsupportedEncodingException;

import org.apache.http.Header;

import android.util.Log;

import com.google.gson.Gson;
import com.loopj.android.http.AsyncHttpResponseHandler;

public class BaseAsyncHttpResponseHandler extends AsyncHttpResponseHandler {
	private final String TAG = BaseAsyncHttpResponseHandler.class.getName()
			+ " : gaomh";

	@Override
	public void onSuccess(int statusCode, Header[] headers, byte[] responseBody) {
		for (Header header : headers) {
			Log.d(TAG, header.getName() + " : " + header.getValue());
		}
		try {
			String res = new String(responseBody, "utf-8");
			Log.d(TAG, "responseBodey : " + res);
			Gson gson = new Gson();
			
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void onFailure(int statusCode, Header[] headers,
			byte[] responseBody, Throwable error) {

	}

}
