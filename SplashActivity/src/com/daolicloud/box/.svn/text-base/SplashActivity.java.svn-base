package com.daolicloud.box;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources.NotFoundException;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.daolicloud.box.domain.UpdateInfo;
import com.daolicloud.box.parser.UpdateInfoParser;
import com.daolicloud.box.utils.ActivityHolder;
import com.daolicloud.box.utils.DownLoadUtil;
import com.daolicloud.box.utils.LogUtil;

/**
 * 启动类通常功能：检查网络，检查升级，创建程序缓存路径、log、检查SDcard是否存在
 * 
 * @author zhanli.yuan
 * 
 */
public class SplashActivity extends BaseActivity {

	public static final int PARSE_SUCCESS = 10;
	public static final int PARSE_ERROR = 11;
	public static final int SERVER_ERROR = 12;
	public static final int URL_ERROR = 13;
	public static final int NETWORK_ERROR = 14;
	public static final int DOWNLOAD_SUCCESS = 15;
	public static final int DOWNLOAD_ERROR = 16;
	protected static final String TAG = "SplashActivity";
	public static final int COPY_ADDRESSDB_ERROR = 17;
	public static final int COPY_ADDRESSDB_SUCCESS = 18;
	public static final int COPY_NUMBERDB_ERROR = 19;
	public static final int COPY_NUMBERDB_SUCCESS = 20;
	public static final int COPY_VIRUS_SUCCESS = 21;
	private TextView tv_splash_version;
	private RelativeLayout rl_splash_main;
	private UpdateInfo updateInfo;

	private ProgressDialog pd;
	/**
	 * 是否发消息了关闭启动了
	 */
	private boolean isClosed = false;// 标记当前activity的状态
	/**
	 * 启动主页消息
	 */
	private final static int SEND_MESSAGE_AND_CLOSE_WINDOW = 31;// 发出一个关闭当前窗体的消息，值为1
	/**
	 * 关于该类消息
	 */
	private final int MSG_ID_CLOSE = 32;
	private final static int OPENLOGIN_AND_CLOSE_WINDOW = 33;
	// private PrefService prefService;
	/**
	 * 对话框
	 */
	private AlertDialog menuDialog;// 对话框

	private View menuView;// 对话框布局文件，填充后的一个View对象的引用
	private List<String[]> textList;
	private TextView text1_move_tv;
	private TextView text2_move_tv;
	private MediaPlayer mediaPlayer;
	private File copyFile;
	private Thread child;
	private ImageView iv_splash;

	/**
	 * 出来消息，Handler是android中异步的一种方式，用Handler可以干很多事.
	 */
	private Handler handler = new Handler() {

		@Override
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case SEND_MESSAGE_AND_CLOSE_WINDOW:
				if (!isClosed) {
					isClosed = true;
					loadMainUI();
					handler.sendEmptyMessageDelayed(MSG_ID_CLOSE, 3000);// 延迟1秒将关闭当前activity对的消息发送给主线程处理
				}
			case OPENLOGIN_AND_CLOSE_WINDOW:
				if (!isClosed) {
					isClosed = true;
					loadLoginUI();
					handler.sendEmptyMessageDelayed(MSG_ID_CLOSE, 1000);// 延迟1秒将关闭当前activity对的消息发送给主线程处理
				}
			case MSG_ID_CLOSE:
				finish();
				break;

			/*case PARSE_SUCCESS:
				// 判断版本号
				if (getVersion().equals(updateInfo.getVersion())) {
					loadMainUI();
				} else {
					// 显示更新提示对话框
					showUpdateDialog();
				}

				break;

			case PARSE_ERROR:
				Toast.makeText(getApplicationContext(), "解析XML失败,....", 0)
						.show();
				loadMainUI();
				break;
			case SERVER_ERROR:
				Toast.makeText(getApplicationContext(), "服务器错误", 0).show();
				loadMainUI();
				break;
			case URL_ERROR:
				Toast.makeText(getApplicationContext(), "url路径不正确", 0).show();
				loadMainUI();
				break;
			case NETWORK_ERROR:
				Toast.makeText(getApplicationContext(), "网络连接错误", 0).show();
				loadMainUI();
				break;
			case DOWNLOAD_ERROR:
				Toast.makeText(getApplicationContext(), "下载文件错误", 0).show();
				loadMainUI();
				break;
			case DOWNLOAD_SUCCESS:
				File file = (File) msg.obj;
				Intent intent = new Intent();
				intent.setAction("android.intent.action.VIEW");
				intent.addCategory("android.intent.category.DEFAULT");
				intent.setDataAndType(Uri.fromFile(file),
						"application/vnd.android.package-archive");
				startActivity(intent);
				finish();
				break;*/

			default:
				break;
			}
			
			String[] text;
			if(msg.what<1){
				text = textList.get(0);
				String temp = text1_move_tv.getText().toString().trim();
				text1_move_tv.setText(temp+"\n"+text[0]);
				text = textList.get(1);
				text2_move_tv.setText(temp+"\n"+text[0]);
			}
			//else if(msg.what<5){
//				text = textList.get(1);
//				String temp = text2_move_tv.getText().toString().trim();
//				text2_move_tv.setText(temp+"\n"+text[(msg.what-2)%3]);
//			}
			
		}

	};


//	/** Called when the activity is first created. */
//	@Override
//	public void onCreate(Bundle savedInstanceState) {
//		super.onCreate(savedInstanceState);
//
//
//	}

	/*private void showAnimation() {
		textList = new ArrayList<String[]>();
		for (int i = 0; i < 2; i++) {
			String[] text;
			switch (i) {
				case 0:
					text = new String[]{"当IT作为服务时"};
					textList.add(text);
					break;
				case 1:
					
					text = new String[]{"我们需要防水墙来阻止云中数据泄露"};
					textList.add(text);
					break;
					
				
			}
		}
		*//**
		 * 创建子线程定时发送消息更新主界面
		 *//*
		child = new Thread(new Runnable() {
			public void run() {
				try {
					Thread.sleep(1000);
					for (int i = 0; i < 33; i++) {
						
						Thread.sleep(200);
						handler.sendEmptyMessage(i);
					} 
				}catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
		});
		child.start();
		
		
	}*/

	// 控件的初始化
	private void initView() {
//		tv_splash_version = (TextView) findViewById(R.id.tv_splash_version);
//		tv_splash_version.setText("版本:" + getVersion());
		rl_splash_main = (RelativeLayout) findViewById(R.id.rl_splash_main);
		iv_splash=(ImageView) findViewById(R.id.iv_splash);
		text1_move_tv = (TextView) findViewById(R.id.text1_move_tv);
		text2_move_tv = (TextView) findViewById(R.id.text2_move_tv);

	}

	// 获取版本号
	private String getVersion() {

		PackageManager pm = getPackageManager();
		try {
			PackageInfo packinfo = pm.getPackageInfo(getPackageName(), 0);
			return packinfo.versionName;
		} catch (NameNotFoundException e) {
			e.printStackTrace();
			// todo: can't reach
			return "";
		}

	}

	// 检查版本更新的类
	private class CheckVersionTask implements Runnable {
		public void run() {
			// 检查是否开启自动更新
			SharedPreferences sp = getSharedPreferences("config", MODE_PRIVATE);
			boolean update = sp.getBoolean("is_check_version_on", true);
			LogUtil.i(TAG, "update=" + update);
			if (!update) {
				try {
					Thread.sleep(1000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				loadMainUI();
				return;
			}

			long startTime = System.currentTimeMillis();
			Message msg = Message.obtain();
			// 连接服务器 获取更新信息.
			try {
				URL url = new URL(getResources().getString(R.string.serverurl));
				HttpURLConnection conn = (HttpURLConnection) url
						.openConnection();
				conn.setRequestMethod("GET");
				conn.setConnectTimeout(2000);

				int code = conn.getResponseCode();
				if (code == 200) {
					InputStream is = conn.getInputStream();
					// 解析xml
					updateInfo = UpdateInfoParser.getUpdateInfo(is);
					if (updateInfo != null) {
						// 解析成功.
						msg.what = PARSE_SUCCESS;
					} else {
						// 解析xml失败.
						msg.what = PARSE_ERROR;
					}
				} else {
					msg.what = SERVER_ERROR;
				}

			} catch (MalformedURLException e) {
				e.printStackTrace();
				msg.what = URL_ERROR;
			} catch (NotFoundException e) {
				e.printStackTrace();
				msg.what = URL_ERROR;
			} catch (IOException e) {
				e.printStackTrace();
				msg.what = NETWORK_ERROR;
			} finally {
				long endtime = System.currentTimeMillis();
				long dtime = endtime - startTime;
				if (dtime < 2000) {
					try {
						Thread.sleep(2000 - dtime);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				handler.sendMessage(msg);
			}

		}

	}

	/**
	 * 进入应用程序的登陆界面
	 */
	private void loadMainUI() {
		Intent intent = new Intent(this, MianActivity.class);
		startActivity(intent);
	}

	// 弹出对话框
	private void openOptionsDialog() {

		menuView = View.inflate(this, R.layout.is_sdcard_dialog, null);
		menuDialog = new AlertDialog.Builder(this).create();
		menuDialog.setView(menuView);
		menuDialog.show();
		Button exitPlayerYes = (Button) menuView
				.findViewById(R.id.is_sdcard_yes);
		exitPlayerYes.setOnClickListener(new OnClickListener() {

			public void onClick(View v) {
				// ActivityManager am = (ActivityManager)
				// getSystemService(Context.ACTIVITY_SERVICE);
				// am.restartPackage(getPackageName()װ
				Intent intent = new Intent(getPackageName()
						+ ".ExitListenerReceiver");
				sendBroadcast(intent);
				menuDialog.dismiss();// 隐藏对话框

			}
		});
		/*Button exitPlayerNo = (Button) menuView.findViewById(R.id.is_sdcard_no);
		exitPlayerNo.setOnClickListener(new OnClickListener() {

			public void onClick(View v) {
				handler.sendEmptyMessageDelayed(OPENLOGIN_AND_CLOSE_WINDOW,
						1000);
				menuDialog.dismiss();// 隐藏对话框

			}
		});*/

	}

	/*
	 * @Override public boolean onTouchEvent(MotionEvent event) {
	 * 
	 * handler.sendEmptyMessage(SEND_MESSAGE_AND_CLOSE_WINDOW); Log.v(TAG,
	 * "onTouchEvent(MotionEvent event)"); return true; }
	 */
	/**
	 * 开启登录界面
	 */
	private void loadLoginUI() {

		Log.v(TAG, "closeWindow()");
		Intent intent = new Intent(this, LoginActivity.class);
		this.startActivity(intent);
		finish();
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
		ActivityHolder.getInstance().removeActivity(this);
		handler.removeMessages(SEND_MESSAGE_AND_CLOSE_WINDOW);// 在当前activity销毁的时候，将此消息从消息堆栈中移除
		handler.removeMessages(MSG_ID_CLOSE);// 在当前activity销毁的时候，将此消息从消息堆栈中移除
//		
//		child.interrupt();

	}

	/**
	 * 显示更新提示的对话框
	 */
	protected void showUpdateDialog() {

		Log.i(TAG, "显示更新提示对话框");
		AlertDialog.Builder buidler = new Builder(this);
		buidler.setIcon(R.drawable.notification);
		buidler.setTitle("升级提示");
		buidler.setMessage(updateInfo.getDescription());
		buidler.setOnCancelListener(new OnCancelListener() {

			public void onCancel(DialogInterface dialog) {
				loadMainUI();
			}
		});
		buidler.setPositiveButton("升级", new DialogInterface.OnClickListener() {

			public void onClick(DialogInterface dialog, int which) {
				LogUtil.i(TAG, "下载:" + updateInfo.getPath());
				if (Environment.getExternalStorageState().equals(
						Environment.MEDIA_MOUNTED)) {

					pd = new ProgressDialog(SplashActivity.this);
					pd.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
					pd.show();

					final File file = new File(Environment
							.getExternalStorageDirectory(), DownLoadUtil
							.getFileName(updateInfo.getPath()));
					new Thread() {
						public void run() {
							File downloadfile = DownLoadUtil.downLoad(
									updateInfo.getPath(),
									file.getAbsolutePath(), pd);
							Message msg = Message.obtain();
							if (downloadfile != null) {
								// 下载成功,安装....
								msg.what = DOWNLOAD_SUCCESS;
								msg.obj = downloadfile;
							} else {
								// 提示用户下载失败.
								msg.what = DOWNLOAD_ERROR;
							}
							handler.sendMessage(msg);
							pd.dismiss();
						};
					}.start();
				} else {
					Toast.makeText(getApplicationContext(), "sd卡不可用", 0).show();
					loadMainUI();
				}

			}
		});
		buidler.setNegativeButton("取消", new DialogInterface.OnClickListener() {

			public void onClick(DialogInterface dialog, int which) {
				loadMainUI();
			}
		});
		// buidler.create().show();
		buidler.show();
	}
	@Override
	public boolean onTouchEvent(MotionEvent event) {
		//点击屏幕快速进入
		handler.sendEmptyMessage(SEND_MESSAGE_AND_CLOSE_WINDOW);
		Log.v(TAG, "onTouchEvent(MotionEvent event)");
		return true;
	}

	@Override
	public void processData() {
		// TODO Auto-generated method stub
		// 选择语言
		/*
		 * prefService = new PrefService(this); if(Constants.isChangleLocale){
		 * PrefService.changleLocale(this, prefService); }
		 */
		
		setContentView(R.layout.splash);
		initView();

		AlphaAnimation aa = new AlphaAnimation(0.2f, 1.0f);
		aa.setDuration(2000);
		iv_splash.startAnimation(aa);
		// 判断是否有SDcard
		if (!(Environment.getExternalStorageState()
				.equals(Environment.MEDIA_MOUNTED))) {
			// 延长3秒进入登录页面
			// handler.sendEmptyMessageDelayed(SEND_MESSAGE_AND_CLOSE_WINDOW,
			// 3000);
			// 没有SDcard时弹出对话框
			openOptionsDialog();
			return;

		} else {
			text1_move_tv.startAnimation(AnimationUtils.loadAnimation(this, R.anim.scale_shownext_in));
			text2_move_tv.startAnimation(AnimationUtils.loadAnimation(this, R.anim.scale_shownext_in));
			handler.sendEmptyMessageDelayed(SEND_MESSAGE_AND_CLOSE_WINDOW,3000);
			
			/*overridePendingTransition(R.anim.scale_shownext_in9, R.anim.scale_shownext_out9);
			showAnimation();//显示splash界面字体的动画
*/			//handler.sendEmptyMessageDelayed(SEND_MESSAGE_AND_CLOSE_WINDOW, 3000);
		}

		/*
		 * else {
		 * 
		 * // 检查版本更新 new Thread(new CheckVersionTask()).start(); }
		 */
		
		ActivityHolder.getInstance().addActivity(this);

		Log.v(TAG, "onCreate()");
	}

}
