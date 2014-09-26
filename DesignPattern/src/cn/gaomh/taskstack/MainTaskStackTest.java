package cn.gaomh.taskstack;

public class MainTaskStackTest {
	TaskStack ts = new TaskStack();

	public void addTask() {
		for (int i = 0; i < 1000; i++) {
			ts.pushTask(new Task(i));//ok
//			System.out.println(String.format("push task of %d",i));
			try {
				Thread.sleep(11);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}

	public void loopStack() {
		ts.loop();
	}

	public static void main(String[] args) {
		MainTaskStackTest mainTaskStackTest = new MainTaskStackTest();
		mainTaskStackTest.addTask();
//		try {
//			Thread.sleep(2*1000);
//		} catch (InterruptedException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		mainTaskStackTest.loopStack();

	}

	public class Task implements Runnable {
		public int taskId;

		public Task(int i) {
			this.taskId = i;
		}

		@Override
		public void run() {
			try {
				Thread.sleep(0 * 1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			System.out.println(String.format("this is the task of %d", taskId));
		}

	}
}
