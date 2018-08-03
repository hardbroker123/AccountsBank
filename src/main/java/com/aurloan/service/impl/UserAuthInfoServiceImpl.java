package com.aurloan.service.impl;

import com.aurloan.pojo.UserAuthInfo;
import com.aurloan.mapper.UserAuthInfoMapper;
import com.aurloan.service.UserAuthInfoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserAuthInfoServiceImpl implements UserAuthInfoService {
	
	@Autowired
    UserAuthInfoMapper userAuthInfoMapper;

    public UserAuthInfoMapper getUserAuthInfoMapper() {
        return userAuthInfoMapper;
    }

    public void setUserAuthInfoMapper(UserAuthInfoMapper userAuthInfoMapper) {
        this.userAuthInfoMapper = userAuthInfoMapper;
    }

    /**
     * 通过银行卡号查找授权信息
     *
     * @param account
     */
    @Override
    public UserAuthInfo getUserAuthInfoIdByAccount(String account) {
        return userAuthInfoMapper.getUserAuthInfoIdByAccount(account);
    }

    /**
     * 添加授权信息
     *
     * @param userAuthInfo
     */
    @Override
    public int insertOneUserAuthInfo(UserAuthInfo userAuthInfo) {
        return userAuthInfoMapper.insertOneUserAuthInfo(userAuthInfo);
    }

    /**
     * 更新授权信息
     *
     * @param userAuthInfo
     */
    @Override
    public int updateOneUserAuthInfo(UserAuthInfo userAuthInfo) {
        return userAuthInfoMapper.updateOneUserAuthInfo(userAuthInfo);
    }

    /**
     * 更新授权状态
     *
     * @param userAuthInfo
     */
    @Override
    public void updateUserAuthStateByAccount(UserAuthInfo userAuthInfo) {
        userAuthInfoMapper.updateUserAuthStateByAccount(userAuthInfo);
    }

    /**
     * 验证转账金额
     *
     * @param account
     */
    @Override
    public double checkReAccountByCard(String account) {
        return userAuthInfoMapper.checkReAccountByCard(account);
    }

    /**
     * 根据用户id查询授权银行卡信息
     */
    @Override
    public List<UserAuthInfo> getAllAccountCards(int personid) {
        // TODO Auto-generated method stub
        return userAuthInfoMapper.getAllAccountCards(personid);
    }
}
