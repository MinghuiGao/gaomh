package cn.gaomh.adapter;

public class AdapterTest {
	
	private Adaptable mAdaptable;
	public void setAdapter(Adaptable adapter){
		this.mAdaptable = adapter;
	}
	
	public void perform(){
		if(mAdaptable != null){
			mAdaptable.speak();
		}
	}
	public static void main(String[] args) {
		AdapterTest at = new AdapterTest();
		at.setAdapter(new Adapter());
		at.perform();
	}

}
