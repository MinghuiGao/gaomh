package cn.gaomh.reflactBean;

import java.awt.Point;
import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Method;

public class 内省获取bean的属性名和值 {

	/**
	 * 功能描述：
	 * 
	 * @param args
	 * @版本 1.0
	 * @创建者 gaominghui
	 * @创建时间 2014-11-1 下午4:39:21
	 * @版权所有 ©2014 CTFO
	 * @修改者 gaominghui
	 * @修改时间 2014-11-1 下午4:39:21 修改描述
	 */

	public static void main(String[] args) {
		A a = new A();
		a.setAge("12");
		a.setName("gaomh");
		a.setNum(111);

		B b = new B();
		b.setName("bbbb");
		b.setNum(2222);

		transferBean(a, b);
		System.out.println("b:"+b.getName()+ "num :"+b.getNum());
	}

	private static void transferBean(A a, B b) {
		try {
			BeanInfo beanA = Introspector.getBeanInfo(A.class);
			BeanInfo beanB = Introspector.getBeanInfo(B.class);
			PropertyDescriptor[] pdA = beanA.getPropertyDescriptors();
			PropertyDescriptor[] pdB = beanB.getPropertyDescriptors();
			for (PropertyDescriptor propB : pdB) { // B的属性少
				String nameB = propB.getName();
				for (PropertyDescriptor propA : pdA) {
					String nameA = propA.getName();
					if("class".equals(nameA)){
						continue;
					}
					if (nameA != null && nameB.equals(nameA)) {// 将A的值设进B中。
						Method readA = propA.getReadMethod();
						System.out.println("a read : "+ readA.getName());
						Method writeB = propB.getWriteMethod();
						System.out.println("b : write : "+ writeB.getName());
						Object valueA = readA.invoke(a);
						writeB.invoke(b, valueA);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void getProperty(Point point, String proName)
			throws Exception {
		BeanInfo beanInfo = Introspector.getBeanInfo(point.getClass());
		PropertyDescriptor[] proDescriptors = beanInfo.getPropertyDescriptors();
		for (PropertyDescriptor prop : proDescriptors) {
			if (prop.getName().equals(proName)) {
				Method methodGetx = prop.getReadMethod();
				System.out.println(methodGetx.invoke(point));// 8
				break;
			}
		}
	}

}
