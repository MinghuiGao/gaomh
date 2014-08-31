package cn.gaomh.performance;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Gaomh {
	private String name = "gaomh is a handsome guy working at ctfo.Maven URL: https://oss.sonatype.org/content/repositories/snapshots/ GroupId: com.loopj.android ArtifactId: android-async-http Version: 1.4.6-SNAPSHOT Packaging: JAR or AAR";
	private int age = 27;
	private String[] birthday;

	// do the test on android.
	public Gaomh() {
		long start = System.currentTimeMillis();
		for (int j = 0; j < 100000; j++) {
			int nAge = this.age;
			
			birthday = new String[nAge];
			for (int i = 0; i < nAge; i++) {
//				String birth = "bithday : " + i + "test "+ i+"gaomh "+ i + "asfasd "+i+"adsfasdf"+i+"ssfe"+i;
				StringBuilder sb = new StringBuilder("birthday : ");
				sb.append(i);
				sb.append("test");
				sb.append(i);
				sb.append("gaomh");
				sb.append(i);
				sb.append("asfasd");
				sb.append(i);
				sb.append("adsfasdf");
				sb.append(i);
				sb.append("ssfe");
				sb.append(i);
				birthday[i] = sb.toString();
//				birthday[i] = birth;
			}
		}
		System.out.println("cost : " + (System.currentTimeMillis() - start));
	}
	
	public static void test1(){
		for(int i = 0;i < 10000;i ++){
			SimpleDateFormat sdf = new SimpleDateFormat();
			sdf.applyPattern("yyyy.MM.dd G 'at' HH:mm:ss z");
//			System.out.println(sdf.format(new Date()));
		}
	}
	
	public void test2(){
		for(int i = 0;i < 10000;i ++){
			SimpleDateFormat sdf = new SimpleDateFormat();
			sdf.applyPattern("yyyy.MM.dd G 'at' HH:mm:ss z");
//			System.out.println(sdf.format(new Date()));
		}
	}
	
	public void test3(String str){
		long start = System.currentTimeMillis();
		for(int i=0;i<50000;i++){
			name.substring(0, name.lastIndexOf(":"));
			name.charAt(100);
			name.contains("content");
			name.compareTo("sdfasf");
			name.concat("gaomh");
			name.codePointBefore(100);
		}
		System.out.println((System.currentTimeMillis()-start)+"cost 3--> " +name );
	}
	
	// better performance.
	public void test4(){
		long start = System.currentTimeMillis();
		String name = this.name;
		for(int i=0;i<50000;i++){
			name.substring(0, name.lastIndexOf(":"));
			name.charAt(100);
			name.contains("content");
			name.compareTo("sdfasf");
			name.concat("gaomh");
			name.codePointBefore(100);
		}
		System.out.println((System.currentTimeMillis()-start)+"cost 4--> "+ name );
	}
	
}
