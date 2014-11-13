package cn.gaomh.sort;

import java.util.ArrayList;
import java.util.Collections;

public class 将一个list中的数据按照其元素的字内容进行排序 {

	public static void main(String[] args) {
//		ArrayList<Object[]> array = new ArrayList<Object[]>();
//		Object[] obj1 = new Object[]{"name","gaomh",5};
//		Object[] obj2 = new Object[]{"name","all",3};
//		Object[] obj3 = new Object[]{"name","hui",1};
//		Object[] obj4 = new Object[]{"name","minghui",2};
//		
//		array.add(obj1);
//		array.add(obj2);
//		array.add(obj3);
//		array.add(obj4);
		
		ArrayList<EntInfoHolder> array = new ArrayList<EntInfoHolder>();
		EntInfoHolder h1 = new EntInfoHolder();
		h1.setTitle("name");
		h1.setInfo("gaomh");
		h1.setOrder(5);
		
		EntInfoHolder h2 = new EntInfoHolder();
		h2.setTitle("name");
		h2.setInfo("all");
		h2.setOrder(2);
		EntInfoHolder h3 = new EntInfoHolder();
		h3.setTitle("name");
		h3.setInfo("hui");
		h3.setOrder(1);
		EntInfoHolder h4 = new EntInfoHolder();
		h4.setTitle("name");
		h4.setInfo("minghui");
		h4.setOrder(3);
		
		array.add(h1);
		array.add(h2);
		array.add(h3);
		array.add(h4);
		
		Collections.sort(array);
		
		System.out.println();
	}

	private static ArrayList<Object[]> sort(ArrayList<Object[]> array) {
		
		
		
		return null;
	}
	
	

}
