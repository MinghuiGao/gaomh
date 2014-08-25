package cn.gaomh.decorator;

public class Decorator implements Sourcable {

	private Sourcable source;
	public Decorator(Sourcable source){
		this.source = source;
	}
	@Override
	public void method() {
		System.out.println("before decorate.");
		source.method();
		System.out.println("after decorate.");
	}

}
