package cn.gaomh.excutors;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class MainExcutorsTest {
	final static ScheduledExecutorService scheduler = Executors
			.newScheduledThreadPool(4);
	static MainExcutorsTest mt = new MainExcutorsTest();
	static MyRunnable task = mt.new MyRunnable(new CallBack() {
		public void shutDown() {
			scheduler.shutdown();
		}

		@Override
		public boolean isShutDown() {
			return scheduler.isShutdown();
		}
	});
	static int i = 0;

	public static void main(String[] args) {
		ExecutorService executorService = Executors.newSingleThreadExecutor();
		ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(4);

		executorService.execute(task);

		scheduler.scheduleAtFixedRate(task, 1, 3, TimeUnit.SECONDS);
	}

	class MyRunnable implements Runnable {
		CallBack cb;

		public MyRunnable(CallBack cb) {
			this.cb = cb;
		}

		@Override
		public void run() {
			System.out.println("this is the task." + i);
			if (i == 2) {
				scheduler.shutdown();
			}
			if (scheduler.isShutdown()) {
				System.out.println("scheduler is shutdown .");
				
			}
			if(scheduler.isTerminated()){
				System.out.println("scheduler is terminated.");
			}
			i++;
		};
	}

	interface CallBack {
		public void shutDown();

		public boolean isShutDown();
	}

}
