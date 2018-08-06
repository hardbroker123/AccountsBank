package com.aurloan.webservice.impl;

import com.aurloan.pojo.UserRegInfo;
import com.aurloan.webservice.UserRegCheck;

public class UserRegCheckImpl implements UserRegCheck{

	@Override
	public Boolean isCorrectCard(UserRegInfo userRegInfo) {
		/*Service se = new ObjectServiceFactory().create(CheckAmtService.class);
		XFireProxyFactory factory = new XFireProxyFactory(XFireFactory.newInstance().getXFire());
		String hellourl = "http://DESKTOP-90O0RUP:8088/XfileWebService-rd/services/checkAmt";//刘卫京的Ip地址
		boolean b=false;
		CheckAmtService ca;
		try {
			ca = (CheckAmtService)factory.create(se,hellourl);
			b = ca.Check(applyAmt);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		return null;
	}

}
