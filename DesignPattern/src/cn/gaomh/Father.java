package cn.gaomh;

public class Father extends Ansestor{
	
	private static Ansestor instance;
	
	public static Ansestor getInstance(){
		if(instance == null){
			synchronized(Father.class){
				instance = new Father();
			}
		}
		return instance;
	}
	
	@Override
	public void fun() {
		System.out.println("this is from the father.");
	}
	
	public void fun2(){
		System.out.println("this is a method of father.");
	}
	
}

