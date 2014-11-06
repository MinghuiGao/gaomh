package cn.gaomh.taskstack;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class TaskStack implements ITaskStack {

	private LinkedList<Runnable> stack;
//	private ArrayList<Runnable> stack;

	private int count;

	public TaskStack() {
		stack = new LinkedList<Runnable>();
		count = 0;
	}

	@Override
	public void pushTask(Runnable task) {
		synchronized (this) {
			System.out.println("push task of : "+ ((MainTaskStackTest.Task)task).taskId);
			if (stack != null) {
				stack.add(task);
			}
			this.count++;
			System.out.println("count : "+ count);
		}
	}

	@Override
	public synchronized Runnable popTask() {
		Runnable res = null;
		synchronized (this) {
			try {
				res = stack.remove(count-1);
				int taskId = ((MainTaskStackTest.Task)res).taskId;
				System.out.println("pop the task of : "+ taskId);
				if (count > 0) {
					count--;
				}
			} catch (IndexOutOfBoundsException e) {
				System.out.println("stack is empty!");
			}
		}
		return res;
	}

	@Override
	public int getCount() {
		return count;
	}

	private void runTask(Runnable task) {
		// TODO : use Executors.
		// 这里每个任务的执行时间不同，导致最后结果顺序于出栈顺序不一致。
//		new Thread(task).start();
		
		ExecutorService threadPool = Executors.newFixedThreadPool(10);
		threadPool.execute(task);
		
	}

	public void loop() {
		while(!isTaskEmpty()){
			Runnable popTask = this.popTask();
			if(popTask != null){
				runTask(popTask);
			}else{
				break;
			}
		}
			
	}

	@Override
	public boolean isTaskEmpty() {
		return count == 0;
	}

}
