package cn.gaomh.taskstack;

public interface ITaskStack {

	public void pushTask(Runnable task);

	public Runnable popTask();
	
	public int getCount();
	
	public boolean isTaskEmpty();

}
