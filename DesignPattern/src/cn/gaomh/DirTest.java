package cn.gaomh;

import java.io.File;

public class DirTest {

	private static boolean isCreated;

	public static void main(String[] args) {
		File f = new File("/home/gaomh/Desktop/gaomh");
		if(!f.exists()){
			isCreated = f.mkdir();
		}
		System.out.println("isCreated : "+ isCreated);
	}

}
