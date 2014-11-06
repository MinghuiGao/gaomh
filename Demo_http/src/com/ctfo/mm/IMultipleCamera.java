package com.ctfo.mm;


public interface IMultipleCamera {
	
	
	public void startRecording();
	public void pauseRecording();
	public String stopRecording();
	public void replay();
	public void saveToLocal();
	public void upload();
	public void takePhoto();
	public void turnOnFlash();
	public void turnOffFlash();
	public void flash();
	public void destory();
	
}
