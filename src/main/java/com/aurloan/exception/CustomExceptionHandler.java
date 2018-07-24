package com.aurloan.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class CustomExceptionHandler implements HandlerExceptionResolver{

	@Override
	public ModelAndView resolveException(HttpServletRequest arg0, 
			HttpServletResponse arg1, Object arg2,
			Exception ex) {
		ModelAndView mv=new ModelAndView();
		CustomException ce=null;
		String message;
		if(ex instanceof CustomException){
			message="用户异常，请联系管理员";
		}else{
			message="未知错误";
		}
		ce=new CustomException(message);
		mv.addObject("errormsg",ce.getMessage());
		mv.setViewName("error");
		return mv;
	}

}
