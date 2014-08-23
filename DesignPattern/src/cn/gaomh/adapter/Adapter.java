package cn.gaomh.adapter;

public class Adapter extends Source implements Adaptable {

	@Override
	public void speak() {
		if(gender == 1){
			fun();
		}else{
			System.out.println("it's a girl...just can cry.");
		}
	}

	@Override
	public void cry() {
		if(gender == 0){
			System.out.println("cry...");
		}
	}

}
