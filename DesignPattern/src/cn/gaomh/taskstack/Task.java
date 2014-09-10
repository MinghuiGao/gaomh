package cn.gaomh.taskstack;

public abstract class Task implements Runnable{
	
	public Task(){
		// if you want keep this class , do something here.
		
	}
	
	@Override
	public void run() {
		
	}
	
	public abstract void taskRun();
	
}
