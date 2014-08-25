package cn.gaomh.decorator;

public class Source implements Sourcable {

	@Override
	public void method() {
		System.out.println("this is original.");
	}

}
