package cn.gaomh.jsontest;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class DateToJsonTest {

	/**
	 * 功能描述：
	 * @param args 
	 * @版本 1.0
	 * @创建者 gaominghui
	 * @创建时间 2014-11-3 下午3:24:07
	 * @版权所有 ©2014 CTFO
	 * @修改者 gaominghui
	 * @修改时间 2014-11-3 下午3:24:07
	 * 修改描述 
	 */

	public static void main(String[] args) {
		Date date = new Date();
		HashMap<String,Date> map = new HashMap<String,Date>();
		map.put("prime Date", date);
		
		GsonBuilder builder = new GsonBuilder();
//		builder.setDateFormat("yyyy-MM-dd HH:mm:ss");
//		builder.setDateFormat("yyyy-MM-dd");
		Gson gson = builder.create();
		
		String json = gson.toJson(map);
//		System.out.println(json);
		TrRptEnterpriseVerifyBean bean = new TrRptEnterpriseVerifyBean();
		bean.setCheckNum(1);
		bean.setEmail("gaomh@ctfo.com");
		bean.setEnterpriseName("中国");
		bean.setFixTotal(8000.0d);
		bean.setUpdateTime(new Date());
		
		String json2 = gson.toJson(bean);
		System.out.println(json2);
		
		TrRptEnterpriseVerifyBean fromJson = gson.fromJson(json2, TrRptEnterpriseVerifyBean.class);
		Date updateTime = fromJson.getUpdateTime();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String format = sdf.format(updateTime);
		
		System.out.println("format : "+format);
		
	}

}
