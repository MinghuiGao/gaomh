package cn.gaomh.并行计算数组的和;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class FutureTest {


	public static void main(String[] args) {
		FutureTest ft = new FutureTest();
//		TaskFuture tf = ft.new TaskFuture(26);
		
		Callable<Integer> func = new Callable<Integer>(){
			public Integer call() throws Exception {
				System.out.println("inside callable");  
				Thread.sleep(1000);  
				return new Integer(8);  
			}
		};
		
		FutureTask<Integer> futureTask = new FutureTask<>(func);
		ExecutorService pool = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors());
		pool.submit(futureTask);
		try {
			int res = futureTask.get();
			System.out.println("res : "+ res);
		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (ExecutionException e) {
			e.printStackTrace();
		}
		System.out.println("nothing wrong with the next work..");
	}
	
//	class TaskFuture implements Future<Integer> , Runnable{
//		private int age ;
//		private int res;
//		public TaskFuture(int page){
//			this.age = page;
//		}
//		
//		@Override
//		public boolean cancel(boolean mayInterruptIfRunning) {
//			return false;
//		}
//
//		@Override
//		public Integer get() throws InterruptedException, ExecutionException {
//			
//			return res;
//		}
//
//		@Override
//		public Integer get(long timeout, TimeUnit unit)
//				throws InterruptedException, ExecutionException,
//				TimeoutException {
//			
//			return res;
//		}
//
//		@Override
//		public boolean isCancelled() {
//			return false;
//		}
//
//		@Override
//		public boolean isDone() {
//			return false;
//		}
//
//		@Override
//		public void run() {
//			try {
//				Thread.sleep(1000);
//			} catch (InterruptedException e) {
//				e.printStackTrace();
//			}
//			res = this.age +1;
//		}
//		
//	}
	

}
