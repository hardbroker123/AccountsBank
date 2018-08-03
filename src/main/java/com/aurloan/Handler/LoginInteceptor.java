package com.aurloan.Handler;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInteceptor implements HandlerInterceptor{

	//handler执行完成以后执行
	//进行异常处理
	@Override
	public void afterCompletion(HttpServletRequest arg0, 
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		System.out.println("LoginInteceptor afterCompletion");
		
	}

	//在handler执行过程中执行，返回ModelAndView之前执行
	//侧重业务的处理，比如导航条
	@Override
	public void postHandle(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		System.out.println("LoginInteceptor postHandle");
		
	}
	//在handler、controller执行执行执行的内容
	//一些公用的准备工作，比如日志处理、访问权限、登录判断
	//当这个方法执行完成，并且允许继续执行，其他的2个方法才有机会执行
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse resp,Object arg2) throws Exception {
		//false：禁止继续执行handler
		//true：放行，继续执行handler
		//需要验证访问的资源  是否是公共资源：首页、登录的操作
		String url=request.getRequestURI();
		System.out.println(url);
		if("/userLogin.action".equals(url.substring(url.lastIndexOf("/"))) ||
			"/userRegist.action".equals(url.substring(url.lastIndexOf("/"))) ||
			"/updatePwdForget.action".equals(url.substring(url.lastIndexOf("/"))) ||
			"/xxx.action".equals(url.substring(url.lastIndexOf("/"))) ){
			return true;
		}else{
			System.out.println("进行登录信息验证");
			HttpSession session=request.getSession();
			Object user=session.getAttribute("userLogin");
			Object perInfo=session.getAttribute("PerInfo");
			if(user!=null){
				return true;
			}else{
				System.out.println("登录拦截跳转");
				resp.setContentType("text/html; charset=utf-8");
				PrintWriter out = resp.getWriter();
				out.print("<script>alert('请先登录!');window.location.href='page-login.jsp'</script>");
				//out.print("<script language='javascript'>alert('请重新登录！');window.location.href='page-login.jsp';<script>");
				//resp.sendRedirect("jsp/page-login.jsp");
				return false;
			}
		}
		
		
		
		
		
		
		
		
		
		
		
	}

}
