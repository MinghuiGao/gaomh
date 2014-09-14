package cn.gaomh.test;

import java.io.File;

import org.apache.http.Header;

import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.sample.R;

import android.app.Activity;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;

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
		mListViewFiles = (ListView) findViewById(R.id.lv_videos);
		
		//find videos path.
		
		
	}

	@Override
	public void onClick(View v) {
		uploadFile(mStringVideoPath);
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
//		http://192.168.0.104:8080/fileUpload/upload
//		enctype="multipart/form-data"
//		<input name="videoFile" type = "file"/>
		AsyncHttpClient client = new  AsyncHttpClient();
		
		client.post(this, "http://192.168.0.104:8080/fileUpload/upload", null, , contentType, responseHandler);
		
		
		
	}
	
}
