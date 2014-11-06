package cn.gaomh.jsontest;

import java.util.ArrayList;

import com.google.gson.Gson;

public class DictResultBeanParseTest {

	/**
	 * 功能描述：
	 * @param args 
	 * @版本 1.0
	 * @创建者 gaominghui
	 * @创建时间 2014-10-31 下午3:20:33
	 * @版权所有 ©2014 CTFO
	 * @修改者 gaominghui
	 * @修改时间 2014-10-31 下午3:20:33
	 * 修改描述 
	 */

	public static void main(String[] args) {
		
		DictResultBean res = new DictResultBean();
		res.setVersionCode(1);
		res.setMessage("xiaoxi !");
		res.setStatusCode(100);
		ArrayList<DictBean> list = new ArrayList<DictBean>();
		DictBean bean = new DictBean();
		bean.setCodeName("zhengchang");
		bean.setCodeType("jiancha jieguo ");
		bean.setCodeValue("1");
		DictBean bean2 = new DictBean();
		bean2.setCodeName("bu zhengchang");
		bean2.setCodeType("jiancha jieguo ");
		bean2.setCodeValue("2");
		list.add(bean);
		list.add(bean2);
		res.setDitcBeans(list);
		
		Gson gson = new Gson();
		String json = gson.toJson(res);
		
		
		
		System.out.println("json : "+ json);
		
		DictResultBean fromJson = gson.fromJson(json, DictResultBean.class);
		
		System.out.println(fromJson.getDitcBeans().get(1).getCodeName());
		int id = 1;
		String insertSql = String.format("insert into dict values(%s,'%s','%s','%s');", new Object[]{id++,bean.getCodeValue(),bean.getCodeName(),bean.getCodeType()});
		System.out.println("insert sql : "+ insertSql);
	}

}
