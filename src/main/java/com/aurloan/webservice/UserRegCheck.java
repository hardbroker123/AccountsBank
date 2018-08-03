package com.aurloan.webservice;

import com.aurloan.pojo.UserRegInfo;

/**
 * @author Administrator
 * 公安联网核查    年龄  户籍
 */
public interface UserRegCheck {
	public Boolean isCorrectCard(UserRegInfo userRegInfo);
}
