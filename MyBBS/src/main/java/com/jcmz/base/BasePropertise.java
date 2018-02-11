package com.jcmz.base;

import org.springframework.context.EmbeddedValueResolverAware;
import org.springframework.stereotype.Component;
import org.springframework.util.StringValueResolver;

/***
 * @remark 获取properties文件里面值的类
 * @date 2018/2/2/16:17
 * @author for jld
 *
 */


	@Component
	public class BasePropertise implements EmbeddedValueResolverAware {
	 
	    private StringValueResolver stringValueResolver;
	 
	    @Override
	    public void setEmbeddedValueResolver(StringValueResolver resolver) {
	        stringValueResolver = resolver;
	    }
	 
	    public String getPropertiesValue(String name){
	        return stringValueResolver.resolveStringValue(name);
	    }

}

