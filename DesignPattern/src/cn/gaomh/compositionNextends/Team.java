package cn.gaomh.compositionNextends;

public class Team {

	private Father mFather ;
	public Team(){
		mFather = new Father("gaomh");
	}
	
	public void run(){
		mFather.run();
	}
	
	public void run_static(){
		mFather.run2();
	}
}
