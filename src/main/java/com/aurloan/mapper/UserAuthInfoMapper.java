package com.aurloan.mapper;

import com.aurloan.pojo.UserAuthInfo;

import java.util.List;

public interface UserAuthInfoMapper {
    UserAuthInfo getUserAuthInfoIdByAccount(String account);

    int insertOneUserAuthInfo(UserAuthInfo userAuthInfo);

    int updateOneUserAuthInfo(UserAuthInfo userAuthInfo);

    void updateUserAuthStateByAccount(UserAuthInfo userAuthInfo);
    /**
     * 通过银行卡号查转账金额
     */
    double checkReAccountByCard(String account);
    /**
     * 根据用户id查询授权银行卡信息
     */
    public List<UserAuthInfo> getAllAccountCards(int personid);
}
