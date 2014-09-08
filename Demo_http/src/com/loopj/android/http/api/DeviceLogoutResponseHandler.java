package com.loopj.android.http.api;

import org.apache.http.Header;

import com.loopj.android.http.AsyncHttpResponseHandler;

public class DeviceLogoutResponseHandler extends AsyncHttpResponseHandler {

	@Override
	public void onSuccess(int statusCode, Header[] headers, byte[] responseBody) {
		
	}

	@Override
	public void onFailure(int statusCode, Header[] headers,
			byte[] responseBody, Throwable error) {
		
	}

}
