package cn.gaomh.BlockingQueue;

import java.util.LinkedList;

public class BlockQueue {

	private LinkedList<Object> queue = new LinkedList<Object>();
	private int limit = 10;

	public BlockQueue(int limit) {
		this.limit = limit;
	}

	/**
	 * @param item
	 * @throws InterruptedException
	 */
	public synchronized void enqueue(Object item) throws InterruptedException {
		while (this.queue.size() == this.limit) {
			wait();
		}
		if (this.queue.size() == 0) {
			notifyAll();
		}
		this.queue.add(item);
	}

	/**
	 * @return
	 * @throws InterruptedException
	 */
	public synchronized Object dequeue() throws InterruptedException {
		while (this.queue.size() == 0) {
			wait();
		}
		if (this.queue.size() == this.limit) {
			notifyAll();
		}

		return this.queue.remove(0);
	}

}
