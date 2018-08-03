package com.aurloan.service;

import com.aurloan.pojo.UserAuthInfo;

import java.util.List;

public interface UserAuthInfoService {
    /**
     * 通过银行卡号查找授权编号
     * */
    public UserAuthInfo getUserAuthInfoIdByAccount(String account);
    /**
     * 添加授权信息
     * */
    public int insertOneUserAuthInfo(UserAuthInfo userAuthInfo);
    /**
     * 更新授权信息
     * */
    public int updateOneUserAuthInfo(UserAuthInfo userAuthInfo);

    /**
     * 更新授权状态
     * */
    void updateUserAuthStateByAccount(UserAuthInfo userAuthInfo);
    /**
     * 验证转账金额
     * */
    double checkReAccountByCard(String account);
    /**
     * 根据用户id查询授权银行卡信息
     */
    public List<UserAuthInfo> getAllAccountCards(int personid);
}
