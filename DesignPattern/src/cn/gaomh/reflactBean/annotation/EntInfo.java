package cn.gaomh.reflactBean.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/** 
 * 功能描述 
 * @类型名称 EntInfo
 * @版本 1.0
 * @创建者 gaominghui
 * @创建时间 2014-11-6 上午9:50:43
 * @版权所有 ©2014 CTFO
 * @修改者 gaominghui
 * @修改时间 2014-11-6 上午9:50:43
 * @修改描述 
 */
@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface EntInfo {
	String title() default "";
	String unit() default "";
}
