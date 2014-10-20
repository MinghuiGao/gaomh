package cn.gaomh.jsontest;

import java.util.ArrayList;

import com.google.gson.Gson;

public class StringFormatTest {

	/**
	 * 功能描述：
	 * @param args 
	 * @版本 1.0
	 * @创建者 gaominghui
	 * @创建时间 2014-10-14 上午9:04:19
	 * @版权所有 ©2014 CTFO
	 * @修改者 gaominghui
	 * @修改时间 2014-10-14 上午9:04:19
	 * 修改描述 
	 */

	public static void main(String[] args) {
		Man man1= new Man();
		man1.name="gaomh1";
		man1.id=1;
		
		Man man2= new Man();
		man2.name="gaomh2";
		man2.id=2;
		
		Man man3= new Man();
		man3.name="gaomh3";
		man3.id=3;
		
		ArrayList<Man> men = new ArrayList<Man>();
		men.add(man1);
		men.add(man2);
		men.add(man3);
		
		//[{"name":"gaomh1","id":1},{"name":"gaomh2","id":2},{"name":"gaomh3","id":3}]
		
		///use stringformat to 拼接。
		String format = String.format("{\"name\":\"%s\",\"id\":%s}", "gaomh1","1");
		System.out.println(format);
		String res = toJson(men);
		System.out.println(res);
		
	}

	private static String toJson(ArrayList<Man> men) {
		StringBuffer res = new StringBuffer("[");
		for(Man man : men){
			String str = String.format("{\"name\":\"%s\",\"id\":%s},", man.name,String.valueOf(man.id));
			res.append(str);
		}
		String result = res.toString();
		result = result.substring(0, result.length()-1);
		result += "]";
		return result;
	}
	
	static class Man{
		public String name;
		public int id;
	}

}
