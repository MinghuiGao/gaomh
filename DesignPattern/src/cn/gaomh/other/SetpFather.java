package cn.gaomh.other;

import cn.gaomh.Ansestor;
import cn.gaomh.Father;

public class SetpFather extends Ansestor{

	@Override
	protected void fun() {
		
	}
	
	public static void main(String[] args) {
		B b = new B();
		System.out.println(b.name);
	}

	
	class Name{
		
	}
	
	
}

class Son extends SetpFather{

	@Override
	protected void fun() {
		super.fun();
	}
	
}

class Son2 extends Father{
	
}


class A{
	protected String name;
}

class B extends A{
	private int age;
}


