package cn.gaomh.test;

import java.io.File;

<<<<<<< HEAD
import org.apache.http.Header;

import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.sample.R;

import android.app.Activity;
=======
import android.app.Activity;
import android.content.Intent;
>>>>>>> 9f2768713ec448f9573270ebbabf5cf6f80772f2
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;

<<<<<<< HEAD
=======
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.sample.R;
import com.loopj.android.http.sample.WaypointsActivity;

>>>>>>> 9f2768713ec448f9573270ebbabf5cf6f80772f2
/**
 * @author root
 *
 */
public class UploadTestActivity extends Activity implements OnClickListener {
	
	private String mStringVideoPath  = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Video_ctfo/201498_21412.mp4";
	
	private ListView mListViewFiles;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.gaomh_test);
		init();
		
	}

	private void init() {
		findViewById(R.id.bt__open_video_folder).setOnClickListener(this);
<<<<<<< HEAD
=======
		findViewById(R.id.bt_view_sample).setOnClickListener(this);
		
>>>>>>> 9f2768713ec448f9573270ebbabf5cf6f80772f2
		mListViewFiles = (ListView) findViewById(R.id.lv_videos);
		
		//find videos path.
		
		
	}

	@Override
	public void onClick(View v) {
<<<<<<< HEAD
		uploadFile(mStringVideoPath);
=======
		switch (v.getId()) {
		case R.id.bt_view_sample:
			Intent intent = new Intent(UploadTestActivity.this,WaypointsActivity.class);
			UploadTestActivity.this.startActivity(intent);
			break;
		case R.id.bt__open_video_folder:
			uploadFile(mStringVideoPath);
			break;
		default:
			break;
		}
>>>>>>> 9f2768713ec448f9573270ebbabf5cf6f80772f2
	}
	
	/** upload file  input the filepath.
	 * @param filePath
	 */
	private void uploadFile(String filePath){
		File uploadFile = new File(filePath);
		if(!uploadFile.exists()){
			return;
		}
//		System.out.println("gaomh: "+uploadFile.getAbsolutePath() +uploadFile.length()); ---> find the file.
//		reqeust url:
<<<<<<< HEAD
//		http://192.168.0.104:8080/fileUpload/upload
=======
//		http://192.168.4.107:8080/fileUpload/upload
>>>>>>> 9f2768713ec448f9573270ebbabf5cf6f80772f2
//		enctype="multipart/form-data"
//		<input name="videoFile" type = "file"/>
		AsyncHttpClient client = new  AsyncHttpClient();
		
<<<<<<< HEAD
		client.post(this, "http://192.168.0.104:8080/fileUpload/upload", null, , contentType, responseHandler);
=======
//		client.post(this, "http://192.168.0.104:8080/fileUpload/upload", null, , contentType, responseHandler);
>>>>>>> 9f2768713ec448f9573270ebbabf5cf6f80772f2
		
		
		
	}
	
}
