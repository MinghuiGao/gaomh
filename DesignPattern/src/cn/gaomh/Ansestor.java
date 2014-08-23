package cn.gaomh;
public abstract class Ansestor {
	private static Ansestor instance;
	
	protected Ansestor(){}
	
	protected abstract void fun();
	
	public static Ansestor getInstance(){
		if(instance == null){
			synchronized(Ansestor.class){
				instance = new Ansestor(){
					@Override
					public void fun() {
						System.out.println("this is from abstract Ansestor.");
					}
					
				};
			}
		}
		return instance;
	}
}
