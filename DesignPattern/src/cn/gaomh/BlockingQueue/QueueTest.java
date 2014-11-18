package cn.gaomh.BlockingQueue;

public class QueueTest {

	public static void main(String[] args) {
		final BlockQueue queue = new BlockQueue(100);

		try {
			for (int i = 0; i < 10; i++) {
				queue.enqueue(i);
				Thread.sleep(100);
			}
			Object dequeue = queue.dequeue();

		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		new Thread() {
			public void run() {
				while (true) {
					try {
						Object dequeue = queue.dequeue();
						System.out.println(dequeue);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
			};
		}.start();

		new Thread() {
			public void run() {
				for (int i = 100; i < 120; i++) {
					try {
						queue.enqueue(i);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
			};
		}.start();
	}

}
