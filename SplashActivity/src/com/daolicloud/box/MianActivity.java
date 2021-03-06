package com.daolicloud.box;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Environment;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.SlidingDrawer;
import android.widget.SlidingDrawer.OnDrawerCloseListener;
import android.widget.SlidingDrawer.OnDrawerOpenListener;
import android.widget.TextView;
import android.widget.Toast;

import com.daolicloud.box.domain.FileInfo;
import com.daolicloud.box.env.Constant;
import com.daolicloud.box.env.ConstantImp;
import com.daolicloud.box.handler.MyHandler;
import com.daolicloud.box.requestVo.RequestVo;
import com.daolicloud.box.utils.CommonUtil;
import com.daolicloud.box.utils.LogUtil;
import com.daolicloud.box.utils.MyUtil;
import com.daolicloud.box.view.TempSlidingDrawer;

public class MianActivity extends BaseActivity implements OnClickListener {

	//
	private RelativeLayout ll_main;
	private RelativeLayout ll_content;//设置listview的高度
	private ImageView iv_add;
	private ImageView iv_logo;// 左上的logo。
	private TextView tv_title;// header中的标题

	// private static MyThread myT;
	private boolean is_iv_add_created = false;
	// private Holder holder;
	private boolean isOpen;
	//
	private SlidingDrawer sd_cloud;
	private ImageView handle;
	private boolean isLog = false;// 用户是否登录

	private Button bt_add2cloud;
	private Button bt_select_all;

	private Button tv_login_info;
	private Button bt_setting;
	private Button bt_back2pre;

	private TextView tv_path;
	private ListView lv_file;
	//
	private File[] files;
	private ImageView iv_handle;
	private String tag = "Demo_sdcard_scannerActivity";

	private MyAdapter adapter;
	private Message msg;
	private Map<Integer, Integer> map;

	private ProgressDialog pd;
	private ArrayList<FileInfo> infos = new ArrayList<FileInfo>();
	private ListView lv_cloud;
	private RequestVo vo_getData_from_server;
	private MyFileFromServerAdapter myFileFromServerAdapter;
	private static int deepth = 1;

	private String username;
	private String sessionId;

	private MyHandler handler = new MyHandler() {

		private static final long serialVersionUID = 1L;

		@SuppressWarnings("unchecked")
		@Override
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case Constant.CHECKCODEERROR:
				Toast.makeText(MianActivity.this, Constant.CHECKCODEERRORMSG, 0).show();
			case Constant.JSONSYNTAXEXCEPTION:
				Toast.makeText(MianActivity.this,
						Constant.JSONSYNTAXEXCEPTIONMSG, 0).show();
			case Constant.JSONIOEXCEPTION:
				Toast.makeText(MianActivity.this, Constant.JSONIOEXCEPTIONMSG,
						0).show();
				break;
			case Constant.SERVEREXCEPTION:
				Toast.makeText(MianActivity.this, Constant.SERVEREXCEPTIONMSG,
						0).show();
				break;
			case Constant.GETFILELISTFAILED:
				Toast.makeText(MianActivity.this,
						Constant.GETFILELISTFAILEDMSG, 0).show();
				break;
			case Constant.DIALOGDISMISS:
				pd.dismiss();
				break;
			case Constant.FILELISTRETURN:
				if (msg.obj != null)
					infos = (ArrayList<FileInfo>) msg.obj;
				adapter.notifyDataSetChanged();
				break;
			case Constant.FAILED:
				Toast.makeText(MianActivity.this, Constant.UPLOADFAILED, 0)
						.show();
				pd.dismiss();
				break;
			case Constant.HEAPRECYCLEEXCEPTION:
				Toast.makeText(MianActivity.this, Constant.FILETOOBIG,
						Toast.LENGTH_SHORT).show();
				break;
			case Constant.FILEISEMPTY:
				String fileName = (String) msg.obj;
				Toast.makeText(MianActivity.this, fileName + Constant.NULLFILE,
						Toast.LENGTH_SHORT).show();
				break;
			case Constant.FILEERROR:
				Toast.makeText(MianActivity.this,
						Constant.FILEERRORORPERMISSIONDENIED,
						Toast.LENGTH_SHORT).show();
				break;
			case Constant.ISDIRECTORY:
				File f = (File) msg.obj;
				if (f != null) {
					files = getSdcardFiles(f);
					adapter.notifyDataSetChanged();
				}
				break;
			case Constant.UPLOADING:
				pd.setTitle(Constant.ISUPLOADING);
				pd.setMessage(ConstantImp.isUploading((String) msg.obj));
				pd.show();
				break;
			case Constant.SUCCESS:
				Toast.makeText(MianActivity.this, Constant.ADDSUCCESSFULLY,
						Toast.LENGTH_SHORT).show();
				infos = MyUtil.getFilesFromServer(vo_getData_from_server);
				myFileFromServerAdapter.notifyDataSetChanged();
				pd.dismiss();
				break;
			case Constant.NETERROR:
				Toast.makeText(MianActivity.this, Constant.NETERRORMSG,
						Toast.LENGTH_SHORT).show();
				break;
			default:
				break;
			}
		}
	};
	//
	private View rootview;
	private String path;
	// ����
	private TempSlidingDrawer sd_add2cloud;
	private String userid;
	private CheckBox cb_select;
	private boolean isAllSelected = false;
	private boolean isSomeFileSelected = false;
	private File[] files2Adds;
	// 请求服务器文件列表路径
	private String serverFileUrl;

	/**
	 * 从服务器返回文件列表
	 * 
	 * @param file_name
	 */
	private void getFilesFromServer(String serverFileUrl) {

		RequestVo vo = new RequestVo(serverFileUrl, CommonUtil.getMyAppMap(
				getApplication()).get("sessionId"));
		vo.setHandler(handler);

		infos = MyUtil.getFilesFromServer(vo);
		myFileFromServerAdapter.notifyDataSetChanged();
	}

	@Override
	protected void onResume() {
		super.onResume();
		
		//-----------------------------------------
		LayoutParams layoutParams = ll_content.getLayoutParams();
		//屏幕的高度-底部抽屉图片的高度
		LayoutParams layoutParams2 = iv_handle.getLayoutParams();
		int ivHandleHeight = layoutParams2.height;
		layoutParams.height = (heightPixels-ivHandleHeight-150);
		//-----------------------------------------

		sessionId = (String) CommonUtil.getMyAppMap(getApplication()).get(
				"sessionId");
		username = (String) CommonUtil.getMyAppMap(getApplication()).get(
				"username");
		serverFileUrl = Constant.BASEURL + username;
		if (sessionId != null && !"".equals(sessionId) && username != null
				&& !"".equals(username)) {
			isLog = true;
		}
		if (isLog) {
			sd_cloud.setVisibility(View.VISIBLE);
			handle.setVisibility(View.GONE);
			bt_select_all.setVisibility(View.VISIBLE);
			bt_add2cloud.setVisibility(View.VISIBLE);
			tv_login_info.setVisibility(View.GONE);
			vo_getData_from_server = new RequestVo(Constant.BASEURL + username
					+ "/", sessionId);
			vo_getData_from_server.setHandler(handler);
			// 这里重新发一次get请求获取数据
			infos = MyUtil.getFilesFromServer(vo_getData_from_server);
			adapter.notifyDataSetChanged();
		} else {
			handle.setVisibility(View.VISIBLE);
			sd_cloud.setVisibility(View.GONE);
			bt_select_all.setVisibility(View.GONE);
			bt_add2cloud.setVisibility(View.GONE);
			tv_login_info.setVisibility(View.VISIBLE);
		}
	}

	/**
	 * 从服务器获取剩余空间大小
	 * 
	 * @param userid2
	 * @return
	 */
	private String getSpaceFromServer(String userid2) {
		return "";
	}

	/**
	 * 对文件进行处理，决定上传还是进入下级目录
	 */
	private void processAddFile(File[] files) {
		Message msg2 = Message.obtain();
		try {
			if (files != null) {
				if (files.length == 1) {// �����ļ����У�
					if (files[0].isDirectory()) {// �����ļ���--���ﱨ��ָ���쳣��
						if (files[0] != null) {
							File[] listFiles = files[0].listFiles();
							if (listFiles != null && listFiles.length != 0) {
								processAddFile(files[0].listFiles());
							} else {
								Log.i("file", files[0].getName()
										+ Constant.UPLOADFAILED);
								Toast.makeText(MianActivity.this,
										Constant.FOLDERISEMPTY, 0).show();
							}
						} else {
							Log.i("file", "ϵͳ�ڴ治�㣡");
						}
					} else if (files[0].isFile()) {// �����ļ�
						// �ϴ�http://10.0.3.243:8080/web_fileupload/
						RequestVo vo = new RequestVo(
								files[0].getAbsolutePath(),
								// "http://10.0.3.243:8080/web_fileupload/ManageServlet",
								// "http://10.0.3.88:8000/login/"
								// Constant.GETFILELIST
								// Constant.BASEURL + "test/"
								Constant.BASEURL + username + "/", null);
						LogUtil.uploadI("upload ----- " + files[0].getName()
								+ " to " + Constant.BASEURL + username + "/");
						vo.setHandler(handler);
						Intent intent = new Intent(
								"com.daolicloud.box.UPLOADFILES");
						Bundle bundle = new Bundle();
						bundle.putString("vo", files[0].getAbsolutePath());// ��ҪΨһ��
						CommonUtil.getMyAppMap(getApplication()).put(
								files[0].getAbsolutePath(), vo);
						intent.putExtras(bundle);
						this.startService(intent);
					} else {
						// null--�ļ����?��Ȩ�ޱ��ܾ�
					}
				} else {// ����ļ����У�
					Log.i("file", "--����ļ����---");
					for (File f : files) {
						if (f == null) {
							Log.i("file", "---����ļ����ʱ��file is null---");
							continue;
						} else {
							processAddFile(new File[] { f });
						}
					}
				}
			} else {
				Log.i("file", "file is null");
				msg2.what = Constant.FILEERROR;
				handler.sendMessage(msg);
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
			Log.i(tag, "空指针异常");
			// msg2.what = Constant.HEAPRECYCLEEXCEPTION;
			// handler.sendMessage(msg2);
		}
	}

	/**
	 * 填充数据
	 * @param lv
	 * @param files
	 */
	private void fillData(ListView lv, File[] files) {

	}

	/**
	 * 迭代sdcard中的文件
	 * @param root
	 * @return
	 */
	private File[] getSdcardFiles(File root) {
		if (root == null) {
			root = Environment.getExternalStorageDirectory();
		}
		if (root.isDirectory()) {
			path = root.getAbsolutePath();
			tv_path.setText(path.length() > 25 ? path.substring(0, 21) + "..."
					+ path.substring(path.length() - 10) : path);
		}
		// 判断显示返回按钮
		bt_back2pre
				.setVisibility(path.length() > "/mnt/sdcard".length() ? View.VISIBLE
						: View.INVISIBLE);
		int visibility = bt_back2pre.getVisibility();
		iv_logo.setVisibility(visibility == View.INVISIBLE ? View.VISIBLE
				: View.INVISIBLE);
		String rootpath = root.getAbsolutePath();
		Log.i(tag, rootpath);
		File[] files = root.listFiles();
		return files;
	}

	/**
	 * 像素和dip进行转换
	 * 
	 * @param context
	 * @param dpValue
	 * @return
	 */
	public static int dip2px(Context context, float dpValue) {
		final float scale = context.getResources().getDisplayMetrics().density;
		return (int) (dpValue * scale + 0.5f);
	}

	/**
	 * 用来显示服务器文件列表的Adapter
	 * 
	 * @author dell
	 * 
	 */
	class MyFileFromServerAdapter extends BaseAdapter {

		public int getCount() {
			// TODO Auto-generated method stub
			return infos != null ? infos.size() : 0;
			// return infos.size();
		}

		public Object getItem(int position) {
			// TODO Auto-generated method stub
			return infos != null ? infos.get(position) : null;
			// return infos.get(position) ;
		}

		public long getItemId(int position) {
			// TODO Auto-generated method stub
			return position;
		}

		public View getView(int position, View convertView, ViewGroup parent) {
			if (convertView == null) {
				convertView = View.inflate(MianActivity.this, R.layout.item2,
						null);
			}
			ImageView iv_file_pic_s = (ImageView) convertView
					.findViewById(R.id.iv_file_pic_s);
			TextView tv_file_name_s = (TextView) convertView
					.findViewById(R.id.tv_file_name_s);
			TextView tv_file_date_s = (TextView) convertView
					.findViewById(R.id.tv_file_date_s);
			TextView tv_size_s = (TextView) convertView
					.findViewById(R.id.tv_size_s);
			if (infos != null) {
				String type = infos.get(position).getFile_type();
				iv_file_pic_s
						.setImageResource(type.equals("folder") ? R.drawable.folder
								: R.drawable.file);
				tv_file_name_s.setText(infos.get(position).getFile_name());
				tv_file_date_s.setText(infos.get(position).getFile_date());
				tv_size_s.setText(infos.get(position).getFile_size());
			}
			return convertView;
		}
	}

	/**
	 * 用来显示本地文件的adapter
	 * 
	 * @author dell
	 * 
	 */
	class MyAdapter extends BaseAdapter {
		private Integer checked;

		public int getCount() {
			return files.length;
		}

		public Object getItem(int position) {
			// TODO Auto-generated method stub
			return files[position];
		}

		public long getItemId(int position) {
			// TODO Auto-generated method stub
			return position;
		}

		public View getView(final int position, View convertView,
				ViewGroup parent) {
			LogUtil.checkBox("convertView---->" + position);
			if (convertView == null)
				convertView = View.inflate(MianActivity.this, R.layout.item,
						null);
			TextView tv_filename = (TextView) convertView
					.findViewById(R.id.tv_filename);
			TextView tv_path = (TextView) convertView
					.findViewById(R.id.tv_path);
			ImageView iv_file_pic = (ImageView) convertView
					.findViewById(R.id.iv_file_pic);
			RelativeLayout rl_fileName = (RelativeLayout) convertView
					.findViewById(R.id.rl_fileName);
			cb_select = (CheckBox) convertView.findViewById(R.id.cb_select);
			if (isLog) {
				cb_select.setVisibility(View.VISIBLE);
				cb_select.setTag(position);
				if (isAllSelected)
					cb_select.setChecked(true);
				cb_select.setOnClickListener(new OnClickListener() {
					public void onClick(View v) {
						Log.i(tag, "cb_select is clicked.");
						checked = map.get(position);
						if (checked == null || checked == 0) {
							map.put(position, 1);
						} else {
							map.put(position, 0);
						}
					}
				});
			}

			Integer checked = map.get(position);
			LogUtil.checkBox("select --> " + position + "-----" + checked);
			cb_select.setChecked(checked == null ? false : checked == 1);
			String fileName = files[position].getName();
			tv_filename.setText((fileName.length() > 25) ? fileName.substring(
					0, 10)
					+ " ... "
					+ fileName.substring(fileName.length() - 6) : fileName);
			File[] subFiles = files[position].listFiles();
			if (subFiles == null) {
				tv_path.setText("");
			} else {
				tv_path.setText("("
						+ (subFiles.length == 0 ? 0 : subFiles.length) + ")");
			}
			iv_file_pic
					.setImageResource(files[position].isDirectory() ? R.drawable.folder
							: R.drawable.file);
			return convertView;
		}
	}

	@Override
	public boolean onKeyDown(final int keyCode, final KeyEvent event) {
		if (keyCode == KeyEvent.KEYCODE_BACK) {
			if (sd_cloud.isOpened()) {
				if (deepth <= 1) {
					sd_cloud.animateClose();
				} else {
					// 如果深度大于1，就应该向服务器请求上层文件列表。
					Log.i("onKeyDown", "请求上层文件列表---deepth : " + deepth);
					// String serverFileUrl =
					// (String)CommonUtil.getMyAppMap(getApplication()).get(--deepth+"");
					serverFileUrl = serverFileUrl.substring(0,
							serverFileUrl.lastIndexOf("/"));
					Log.i("onKeyDown", serverFileUrl);
					getFilesFromServer(serverFileUrl);
					--deepth;
				}
				return false;
			}
			if ("/mnt/sdcard".equals(path)) {
				// return super.onKeyDown(keyCode, event);
				AlertDialog isExit = new AlertDialog.Builder(this).create();
				// 设置对话框标题
				isExit.setTitle(Constant.HINT);
				// 设置对话框消息
				isExit.setMessage(Constant.DLEXIT);
				// 添加选择按钮并注册监听
				isExit.setButton(Constant.OK, listener);
				isExit.setButton2(Constant.CANCLE, listener);
				// 显示对话框
				isExit.show();
			} else {
				Message msg = Message.obtain();
				msg.what = Constant.ISDIRECTORY;
				msg.obj = new File(path.substring(0, path.lastIndexOf("/")));
				if (files.length != 0
						&& Constant.CANCLESELECTALL.equals(bt_select_all
								.getText().toString())) {
					for (int i = 0; i < files.length; i++) {
						map.put(i, 0);
					}
					bt_select_all.setText(R.string.selectAll);
				}
				handler.sendMessage(msg);
			}
		}
		map.clear();
		return false;
	}

	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		CommonUtil.getMyAppMap(this.getApplication()).clear();
	}

	public void onClick(View v) {
		String file2add = "";
		switch (v.getId()) {
		case R.id.handle:
			CommonUtil.showInfoDialog(MianActivity.this, Constant.LOGONFIRST);
			break;
		case R.id.bt_back2pre:
			if (sd_cloud.isOpened()) {
				if (deepth <= 1) {
					sd_cloud.animateClose();
				} else {
					// 如果深度大于1，就应该向服务器请求上层文件列表。
					Log.i("onKeyDown", "请求上层文件列表---deepth : " + deepth);
					// String serverFileUrl =
					// (String)CommonUtil.getMyAppMap(getApplication()).get(--deepth+"");
					serverFileUrl = serverFileUrl.substring(0,
							serverFileUrl.lastIndexOf("/"));
					Log.i("onKeyDown", serverFileUrl);
					getFilesFromServer(serverFileUrl);
					--deepth;
				}
				break;
			}
			Message msg = Message.obtain();
			msg.what = Constant.ISDIRECTORY;
			msg.obj = new File(path.substring(0, path.lastIndexOf("/")));
			if (files.length != 0
					&& Constant.CANCLESELECTALL.equals(bt_select_all.getText()
							.toString())) {
				for (int i = 0; i < files.length; i++) {
					map.put(i, 0);
				}
				bt_select_all.setText(R.string.selectAll);
			}
			handler.sendMessage(msg);
			// map.clear();
			break;
		case R.id.bt_add2cloud:
			Log.i("", "add 2 cloud");
			files2Adds = new File[map.size()];
			int ii = 0;
			for (java.util.Map.Entry<Integer, Integer> e : map.entrySet()) {
				if (e.getValue() == 1) {
					// file2add = files[e.getKey()].getName();
					files2Adds[ii++] = files[e.getKey()];
					if (isSomeFileSelected) {
						continue;
					} else {
						isSomeFileSelected = true;
					}
				}
				Log.i(tag, "file2add-------" + file2add);
			}
			if (isSomeFileSelected) {
				CommonUtil.showInfoDialogWithButton(MianActivity.this,
						Constant.ADDCONFIRM, Constant.HINT, Constant.OK,
						new DialogInterface.OnClickListener() {
							public void onClick(DialogInterface dialog,
									int which) {
								processAddFile(files2Adds);
								Log.i(tag, "add---------positive");
								map.clear();
								isSomeFileSelected = false;
								adapter.notifyDataSetChanged();
								if (Constant.CANCLESELECTALL
										.equals(bt_select_all.getText()
												.toString())) {
									bt_select_all.setText(Constant.SELECTALL);
								}
							}
						}, Constant.CANCLE,
						new DialogInterface.OnClickListener() {
							public void onClick(DialogInterface dialog,
									int which) {
								Log.i(tag, "cancle");
								map.clear();
								isSomeFileSelected = false;
								adapter.notifyDataSetChanged();
								if (Constant.CANCLESELECTALL
										.equals(bt_select_all.getText()
												.toString())) {
									bt_select_all.setText(Constant.SELECTALL);
								}
							}
						});
			} else {
				CommonUtil.showInfoDialog(MianActivity.this,
						Constant.SELECTFILEHIT);
			}
			break;
		case R.id.bt_select_all:
			if (files.length != 0
					&& Constant.SELECTALL.equals(bt_select_all.getText()
							.toString())) {
				for (int i = 0; i < files.length; i++) {
					map.put(i, 1);
				}
				isAllSelected = true;
				bt_select_all.setText(R.string.selectAllCancle);
			} else if (files.length != 0
					&& Constant.CANCLESELECTALL.equals(bt_select_all.getText()
							.toString())) {
				for (int i = 0; i < files.length; i++) {
					map.put(i, 0);
				}
				bt_select_all.setText(R.string.selectAll);
			}
			adapter.notifyDataSetChanged();
			break;
		case R.id.tv_login_info:
			tv_login_info.setBackgroundResource(R.drawable.button_long_normal);
			try {
				Thread.sleep(50);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			Intent intent = new Intent(MianActivity.this, LoginActivity.class);
			tv_login_info
					.setBackgroundResource(R.drawable.button_long_selected);
			startActivity(intent);
			break;
		case R.id.bt_setting:

		default:
			break;
		}
	}

	/** 监听对话框里面的button点击事件 */
	DialogInterface.OnClickListener listener = new DialogInterface.OnClickListener() {
		public void onClick(DialogInterface dialog, int which) {
			switch (which) {
			case AlertDialog.BUTTON_POSITIVE:// "确认"按钮退出程序
				finish();
				break;
			case AlertDialog.BUTTON_NEGATIVE:// "取消"第二个按钮取消对话框
				break;
			default:
				break;
			}
		}
	};

	@Override
	public void processData() {

		rootview = View.inflate(this, R.layout.main, null);
		setContentView(rootview);

		// app = (MyApplication) this.getApplication();
		pd = new ProgressDialog(MianActivity.this);
		bt_setting = (Button) findViewById(R.id.bt_setting);
		// 返回上一层按钮
		bt_back2pre = (Button) findViewById(R.id.bt_back2pre);

		tv_login_info = (Button) findViewById(R.id.tv_login_info);
		handle = (ImageView) findViewById(R.id.handle);

		ll_main = (RelativeLayout) findViewById(R.id.ll_main);
		ll_content = (RelativeLayout) findViewById(R.id.ll_content);
		iv_handle = (ImageView) findViewById(R.id.ivhandle);
		
		
		
		tv_path = (TextView) findViewById(R.id.tv_path);
		tv_title = (TextView) findViewById(R.id.tv_title);

		lv_file = (ListView) findViewById(R.id.lv_file);
		// sd_add2cloud = (TempSlidingDrawer) findViewById(R.id.sd_add2cloud);
		sd_cloud = (SlidingDrawer) findViewById(R.id.sd_cloud);
		// 用来显示服务器端数据的listview
		lv_cloud = (ListView) findViewById(R.id.lv_cloud);

		bt_add2cloud = (Button) findViewById(R.id.bt_add2cloud);
		bt_select_all = (Button) findViewById(R.id.bt_select_all);
		iv_logo = (ImageView) findViewById(R.id.iv_logo);
		iv_handle = (ImageView) findViewById(R.id.ivhandle);

		files = getSdcardFiles(null);
		adapter = new MyAdapter();
		myFileFromServerAdapter = new MyFileFromServerAdapter();

		lv_file.setAdapter(adapter);
		lv_cloud.setAdapter(myFileFromServerAdapter);

		map = new HashMap<Integer, Integer>();

		lv_file.setCacheColorHint(Color.TRANSPARENT);// Ĭ���Ǻ�ɫ
		// 监听开启
		sd_cloud.setOnDrawerOpenListener(new OnDrawerOpenListener() {
			public void onDrawerOpened() {
				tv_title.setVisibility(View.INVISIBLE);
				// 判断返回是否显示
				if (!bt_back2pre.isShown()) {
					bt_back2pre.setVisibility(View.VISIBLE);
					iv_logo.setVisibility(View.INVISIBLE);
				}
			}
		});
		// 监听关闭
		sd_cloud.setOnDrawerCloseListener(new OnDrawerCloseListener() {
			public void onDrawerClosed() {
				tv_title.setVisibility(View.VISIBLE);
				if (bt_back2pre.isShown()
						&& !(path.length() > "/mnt/sdcard".length())) {
					bt_back2pre.setVisibility(View.INVISIBLE);
					iv_logo.setVisibility(View.VISIBLE);
				}
			}
		});
		bt_add2cloud.setOnClickListener(this);
		bt_back2pre.setOnClickListener(this);
		userid = (String) CommonUtil.getMyAppMap(getApplication())
				.get("userid");

		bt_select_all.setOnClickListener(this);
		// add onclickListener to handle , a imageView.
		handle.setOnClickListener(this);
		// setting
		bt_setting.setOnTouchListener(new OnTouchListener() {
			public boolean onTouch(View v, MotionEvent event) {
				switch (event.getAction()) {
				case MotionEvent.ACTION_DOWN:
					bt_setting
							.setBackgroundResource(R.drawable.button_long_normal);
					break;
				case MotionEvent.ACTION_UP:
					bt_setting
							.setBackgroundResource(R.drawable.button_long_selected);
					try {
						Thread.sleep(50);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
					Intent intent = new Intent(MianActivity.this,
							SettingActivity.class);
					startActivity(intent);
					break;
				}
				return true;
			}
		});
		// login
		tv_login_info.setOnClickListener(this);
		// handle
		lv_file.setOnItemClickListener(new OnItemClickListener() {
			public void onItemClick(AdapterView<?> parent, View view,
					final int position, long id) {
				Message msg = Message.obtain();

				if (".android_secure".equals(files[position].getName())) {
					CommonUtil.showInfoDialog(MianActivity.this,
							Constant.PERMISSIONDENIED);
				} else {
					if (files[position].isDirectory()) {
						msg.what = Constant.ISDIRECTORY;
						msg.obj = files[position];
						if (files.length != 0
								&& Constant.CANCLESELECTALL
										.equals(bt_select_all.getText()
												.toString())) {
							for (int i = 0; i < files.length; i++) {
								map.put(i, 0);
							}
							bt_select_all.setText(R.string.selectAll);
						}
						handler.sendMessage(msg);
						map.clear();
					} else {
						// �����Ի�����ʾ�Ƿ����
						if (isLog) {
							// 添加到指定目录，需要在这里写。
							AlertDialog.Builder builder = new Builder(
									MianActivity.this);
							final AlertDialog alertDialog = builder.create();
							View alertListView = View.inflate(
									MianActivity.this,
									R.layout.choose_directory, null);
							ListView lv_cloud_choose_directory = (ListView) alertListView
									.findViewById(R.id.lv_cloud_choose_directory);
							lv_cloud_choose_directory
									.setAdapter(new BaseAdapter() {
										public long getItemId(int position) {
											return position;
										}
										public Object getItem(int position) {
											return infos.get(position);
										}
										public int getCount() {
											return infos.size();
										}
										public View getView(int position,
												View convertView,
												ViewGroup parent) {
											if (convertView == null) {
												convertView = View.inflate(
														MianActivity.this,
														R.layout.item2, null);
											}
											ImageView iv_file_pic_s = (ImageView) convertView
													.findViewById(R.id.iv_file_pic_s);
											TextView tv_file_name_s = (TextView) convertView
													.findViewById(R.id.tv_file_name_s);
											TextView tv_file_date_s = (TextView) convertView
													.findViewById(R.id.tv_file_date_s);
											TextView tv_size_s = (TextView) convertView
													.findViewById(R.id.tv_size_s);
											if (infos != null
													&& "folder".equals(infos
															.get(position)
															.getFile_type())) {
												// String type =
												// infos.get(position).getFile_type();
												iv_file_pic_s
														.setImageResource(R.drawable.folder);
												tv_file_name_s.setText(infos
														.get(position)
														.getFile_name());
												tv_file_date_s.setText(infos
														.get(position)
														.getFile_date());
												tv_size_s.setText(infos.get(
														position)
														.getFile_size());
											}
											return convertView;
										}
									});
							alertDialog.setView(alertListView, 0, 0, 0, 0);
							android.content.DialogInterface.OnClickListener listener = new android.content.DialogInterface.OnClickListener() {
								public void onClick(DialogInterface dialog,
										int which) {
									switch (which) {
									case DialogInterface.BUTTON1://上传
										//启动service
										System.out.println("shangchuan+____-----dialog中");
										break;
									case DialogInterface.BUTTON2://返回
										//重新请求
										System.out.println("返回+____-----dialog中");
										break;
									case DialogInterface.BUTTON3://取消
										System.out.println("取消+____-----dialog中");
										if(alertDialog != null){
											alertDialog.dismiss();
										}
										break;
									case -5:
										System.out.println("xinjian --------------------");
										
										break;
									default:
										//the position fo the item clicked.
										
										break;
									}
								}
							};
							alertDialog.setButton(DialogInterface.BUTTON1,
									"上传", listener);
							alertDialog.setButton(DialogInterface.BUTTON2,
									"返回", listener);
							alertDialog.setButton(DialogInterface.BUTTON3,
									"取消", listener);
							alertDialog.setButton(-5,
									"新建", listener);

							alertDialog.show();
							/*
							 * CommonUtil.showInfoDialogWithButton(
							 * MianActivity.this, Constant.ADDCONFIRM,
							 * Constant.OK, Constant.OK, new
							 * DialogInterface.OnClickListener() { public void
							 * onClick( DialogInterface dialog, int which) { //
							 * ����ļ�--һ���ļ� processAddFile(new File[] {
							 * files[position] }); map.put(position, 0);
							 * adapter.notifyDataSetChanged(); } },
							 * Constant.CANCLE, new
							 * DialogInterface.OnClickListener() { public void
							 * onClick( DialogInterface dialog, int which) {
							 * Log.i(tag, "cancle"); map.put(position, 0);
							 * adapter.notifyDataSetChanged(); } });
							 */
						} else {
							CommonUtil.showInfoDialog(MianActivity.this,
									Constant.LOGONFIRST);
						}
					}
				}
			}
		});

		// 云端文件列表的点击事件
		lv_cloud.setOnItemClickListener(new OnItemClickListener() {
			public void onItemClick(AdapterView<?> parent, View view,
					final int position, long id) {
				if ("folder".equals(infos.get(position).getFile_type())) {
					TextView tv_file_name_s = (TextView) view
							.findViewById(R.id.tv_file_name_s);
					String file_name = tv_file_name_s.getText().toString();
					serverFileUrl += "/" + file_name;
					getFilesFromServer(serverFileUrl);
					// 将请求的路径保存在map中。
					// CommonUtil.getMyAppMap(getApplication()).put(deepth+"",
					// serverFileUrl);
					deepth++;// 每进入一层文件，深度加一。
				}
				if (deepth > 1) {// 显示返回按钮-- 目前没用

				}
			}
		});

		//设置长点击事件--做拖动。
		lv_file.setOnItemLongClickListener(new OnItemLongClickListener() {
			public boolean onItemLongClick(AdapterView<?> parent, View view,
					int position, long id) {
				Log.i(tag, "itemlongclick ");
				if (".android_secure".equals(files[position].getName())) {
					CommonUtil.showInfoDialog(MianActivity.this,
							Constant.PERMISSIONDENIED);
				} else {
					//长点击事件是用来进行拖动处理。
//					Intent intent = new Intent(MianActivity.this,Add2CloudActivity.class);
//					MianActivity.this.startActivity(intent);
				}
				return true;
			}
		});
	}

}
