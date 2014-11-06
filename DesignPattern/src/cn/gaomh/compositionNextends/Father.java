package cn.gaomh.compositionNextends;

import java.util.Random;

public class Father {

	private String name;
	private int[] nums = new int[1000];

	public Father(String name) {
		long start = System.currentTimeMillis();
		this.name = name;
		for (int i = 0; i < 1000; i++) {
			Random r = new Random();
			nums[i] = r.nextInt(9000);
		}
		System.out.println((System.currentTimeMillis() - start)
				+ " time consumuption in contructor.");
	}

	public void run() {
		long start = System.currentTimeMillis();
		for (int i = 0; i < 1000; i++) {
			sort(nums);
		}
		System.out.println((System.currentTimeMillis() - start)
				+ " time consumuption in contructor.");
	}
	
	public void run2(){
		long start = System.currentTimeMillis();
		for (int i = 0; i < 1000; i++) {
			sort_static(nums);
		}
		System.out.println((System.currentTimeMillis() - start)
				+ " time consumuption in contructor.");
	}

	public void sort(int[] arr) {
		int temp;
		for (int i = 0; i < arr.length; i++) {
			for (int j = i + 1; j <= arr.length - 1; j++) {
				if (arr[i] < arr[j]) {
					temp = arr[i];
					arr[i] = arr[j];
					arr[j] = temp;
				}
			}
		}
	}

	public static void sort_static(int[] arr) {
		int temp;
		for (int i = 0; i < arr.length; i++) {
			for (int j = i + 1; j <= arr.length - 1; j++) {
				if (arr[i] < arr[j]) {
					temp = arr[i];
					arr[i] = arr[j];
					arr[j] = temp;
				}
			}
		}
	}
}
