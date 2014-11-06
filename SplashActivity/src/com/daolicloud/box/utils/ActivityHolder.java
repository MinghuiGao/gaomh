package com.daolicloud.box.utils;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;

/**
 * ActivityHolder,该类用于管理每个打开的activity的实例
 * @author Administrator
 *
 */
public class ActivityHolder {
	 private final static String TAG = "ActivityHolder";  
	    private static List<Activity>  activityList = new ArrayList<Activity>();;
	    private static ActivityHolder activityHolder;

	    private ActivityHolder() { 
//	    	if(activityList ==null){
//	    		activityList = new ArrayList<Activity>();
//	    	}
	    }

	    public static synchronized ActivityHolder getInstance() {
	        if (activityHolder == null) {
	            activityHolder = new ActivityHolder();
	        }
	        return activityHolder;
	    }

	    /**
	     * add the activity in to a list
	     * 
	     * @param activity
	     */
	    public void addActivity(Activity activity) {
	    	try{
	    		if (activity != null&&activityList!=null) {
	            	int size = activityList.size();
	            	if(checkActivityIsVasivle(activity)){
	            	   removeActivity(activity);
	            	   activityList.add(activityList.size(), activity);
	            	}else{
	            	  activityList.add(activity);
	            	}
	            	size = activityList.size();
	                for(int i=0; i<size; i++) {
	                   LogUtil.i(TAG, "addActivity ==["+i+"]"+" "+activityList.get(i));
	                }
	               
	            }
	    	}catch (Exception e) {
				// TODO: handle exception
			}
	        
	    }

	    /**
	     * finish all the activity in the list.
	     * @param context the activity calling this method hold the context
	     */   
	    public void finishAllActivity() {
	    	if(activityList!=null){
	    		int size = activityList.size();
	            for (int i = size - 1; i >= 0; i--) {
	                Activity activity = activityList.get(i);
	                if (activity != null) {
	                    activity.finish();
	                }
	                LogUtil.i(TAG, "finishAllActivity ==["+i+"]"+" "+activity);
	                activityList.remove(activity);
//	                activityList.clear();
	            }
	    	}
	        
	    }
	    
	    /**
	     * remove the finished activity in the list.
	     * @param activity  the activity is removed from activityList
	     */
	    public void removeActivity(Activity activity) {
	        try {
	        	if(activityList != null){
	        		 activityList.remove(activity);
	                 LogUtil.i(TAG, "removeActivity=="+" "+activity+"activityList.size==="+activityList.size());
	        	}
	        } catch (Exception e) {
	            LogUtil.e(TAG, "removeActivity" + e.getMessage());
	        }
	    }
	    
	    
	    public boolean checkActivityIsVasivle(Activity activity) {
	    	  LogUtil.i(TAG, " "+activityList.contains(activity));
	    	return activityList.contains(activity);
	    }
}
