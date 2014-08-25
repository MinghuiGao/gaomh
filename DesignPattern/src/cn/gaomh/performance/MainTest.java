package cn.gaomh.performance;


public class MainTest {

	public static void main(String[] args) throws CloneNotSupportedException {
//		MainTest mt = new MainTest();
//		StringBuilder sb = new StringBuilder();
//		sb.append( mt.getStr());
//		// a better way to do that.
//		mt.changeStr(sb);
//		System.out.println("----> "+sb.toString());
//		long start = System.currentTimeMillis();
		Gaomh g = new Gaomh();
//		g.test2();
//		System.out.println("object method : "+ (System.currentTimeMillis()-start));
//		start = System.currentTimeMillis();
//		Gaomh.test1();
//		System.out.println("static method : "+ (System.currentTimeMillis()-start));
		g.test3(null);
		g.test4();
	}
	
	// avoid create unecessary objects.
	public String getStr(){
		String name = "gaomh";
		return name; 
	}
	
	// use this method for better performance.
	public void changeStr(StringBuilder sb){
		String name = "name";
		sb.append(name);
	}
	
	
}


