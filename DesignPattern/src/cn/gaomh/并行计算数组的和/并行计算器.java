package cn.gaomh.并行计算数组的和;

import java.util.LinkedList;
import java.util.concurrent.Future;

public class 并行计算器 implements I并行计算器{
	private LinkedList<Future<Long>> tasks ;
	
	public 并行计算器(int[] input){
		tasks = new LinkedList<Future<Long>>();
		
	}

	@Override
	public long sum(int[] dest) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
}
