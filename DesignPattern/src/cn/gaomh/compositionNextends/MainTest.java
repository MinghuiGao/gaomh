package cn.gaomh.compositionNextends;

public class MainTest {

	/**
	 * 功能描述：用继承的方式，实现白箱复用，在方法时间上， 于组合方式实现的黑箱复用并没有太大差异。
	 * 但是在实现方法中，得出结论，同样代码，静态方法速度上要优于成员方法。
	 * 执行时间方面静态方法要快10%～15%。但静态方法是常驻内存的，因此会占用后台内存。
	 * 
	 * @param args
	 * @版本 1.0
	 * @创建者 gaomh
	 * @创建时间 Aug 28, 2014 5:49:19 PM
	 * @版权所有 ©2014 CTFO
	 */
	public static void main(String[] args) {
		// extends
		Son s = new Son("doggy");
		s.run();
		s.run2();

		// composition
		Team t = new Team();
		t.run();
		t.run_static();

	}

}
