package cn.gaomh;

import java.util.LinkedList;

public class Test {

	public static void main(String[] args) {
		LinkedList<String> list = new LinkedList<String>();
//		ArrayList<String> list = new ArrayList<String>();// has no remove() method.
		list.add("1gaomh");
		list.add("2gaomh");
		list.add("3");
		System.out.println(list.remove(0));
		System.out.println(list.toString());
	}

}
