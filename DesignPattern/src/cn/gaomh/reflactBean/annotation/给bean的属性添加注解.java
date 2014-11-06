package cn.gaomh.reflactBean.annotation;

import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class 给bean的属性添加注解 {

	private static ArrayList<Object[]> res;

	/**
	 * 功能描述：
	 * @param args 
	 * @版本 1.0
	 * @创建者 gaominghui
	 * @创建时间 2014-11-6 上午9:23:24
	 * @版权所有 ©2014 CTFO
	 * @修改者 gaominghui
	 * @修改时间 2014-11-6 上午9:23:24
	 * 修改描述 
	 */

	public static void main(String[] args) {
		TrRptEnterpriseVerifyBean bean = new TrRptEnterpriseVerifyBean();
		bean.setEnterpriseName("测试企业名称");
		bean.setZdArea(1000d);
		res = new ArrayList<Object[]>();
		inflateItem(bean);
		
		
	}

	private static void inflateItem(TrRptEnterpriseVerifyBean bean) {
		try {
//			BeanInfo beanInfo = Introspector.getBeanInfo(TrRptEnterpriseVerifyBean.class);
//			PropertyDescriptor[] pds = beanInfo.getPropertyDescriptors();
//			
//			
//			for(PropertyDescriptor pd : pds){
//				Method readMethod = pd.getReadMethod();
//				String methodName = readMethod.getName();
//				if("getClass".equals(methodName)){
//					continue;
//				}
				Method[] declaredMethods = TrRptEnterpriseVerifyBean.class.getDeclaredMethods();
				for(Method method : declaredMethods){
					if((method.getName().startsWith("get"))){
						EntInfo entInfo = method.getAnnotation(EntInfo.class);
						if(entInfo == null)
							continue;
						String title = entInfo.title();
						if(title == null || "".equals(title))
							continue;
						String unit = entInfo.unit();
						Object info = null;
						try {
							info = method.invoke(bean);
						} catch (IllegalAccessException
								| IllegalArgumentException
								| InvocationTargetException e) {
							e.printStackTrace();
						}
						System.out.println(title + info +unit);
						Object[] text = new Object[]{title,info+unit};
						res.add(text);
					}
				}
//			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println();
	}

//	
//	@Documented  
//	@Retention(RetentionPolicy.RUNTIME)  
//	@Target(ElementType.ANNOTATION_TYPE)  
//	public @interface Target {  
//	    ElementType[] value();  
//	} 
}
