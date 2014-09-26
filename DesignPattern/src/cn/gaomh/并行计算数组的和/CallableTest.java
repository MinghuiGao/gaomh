package cn.gaomh.并行计算数组的和;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class CallableTest {

	public static void main(String[] args) {
		CallableTest mt = new CallableTest();
		TaskCallable tc = mt.new TaskCallable(10);
		int cpuNum = Runtime.getRuntime().availableProcessors();
		ExecutorService pool = Executors.newFixedThreadPool(cpuNum);
		Future<Integer> submit = pool.submit(tc);
		try {
//			Integer integer = submit.get();
			Integer integer = submit.get(2, TimeUnit.SECONDS);
			System.out.println("grow older : "+ integer);
		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (ExecutionException e) {
			e.printStackTrace();
		} catch (TimeoutException e) {
			System.out.println(" time out.! surpose the age is 11.");
			e.printStackTrace();
		}
		System.out.println(" nothing wrong with the next work.");
		pool.shutdown();
		pool = null;
	}

	class TaskCallable implements Callable<Integer>{
		private int age ;
		public TaskCallable(int age ){
			this.age = age;
		}
		@Override
		public Integer call() throws Exception {
			Thread.sleep(3000);
			int i = age+1;
			return i;
		}
	}
	
}
