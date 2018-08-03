package com.aurloan.service.impl;

import com.aurloan.pojo.LoanInformation;
import com.aurloan.pojo.PerInfo;
import com.aurloan.pojo.vo.LoanInfoVo;
import com.aurloan.mapper.LoanInformationMapper;
import com.aurloan.service.LoanInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class LoanInformationServiceImpl implements LoanInformationService{
    @Autowired
    LoanInformationMapper loanInformationMapper;

    public LoanInformationMapper getLoanInformationMapper() {
        return loanInformationMapper;
    }

    public void setLoanInformationMapper(LoanInformationMapper loanInformationMapper) {
        this.loanInformationMapper = loanInformationMapper;
    }

    /**
     * 添加一条贷款信息
     *
     * @param loanInformation
     */
    @Override
    public int insertOneLoanInfo(LoanInformation loanInformation) {
        return loanInformationMapper.insertOneLoanInfo(loanInformation);
    }

    /**
     * 通过用户id和贷款信息状态查看贷款信息
     *
     * @param loanInformation
     */
    @Override
    public LoanInformation selectOneLoanInfoByPerIdAndState(LoanInformation loanInformation) {
        return loanInformationMapper.selectOneLoanInfoByPerIdAndState(loanInformation);
    }

    /**
     * 贷款申请表更新
     * 根据贷款编号修改贷款信息，不包括审批时间
     *
     * @param loanInformation
     */
    @Override
    public int updateOneLoanInfo(LoanInformation loanInformation) {
        return loanInformationMapper.updateOneLoanInfo(loanInformation);
    }

    /**
     * 根据贷款编号查询贷款信息，不包括审批时间
     *
     * @param loanInformation
     */
    @Override
    public LoanInformation selectOneLoanInfoByLoanId(LoanInformation loanInformation) {
        return loanInformationMapper.selectOneLoanInfoByLoanId(loanInformation);
    }

    /**
     * 根据personId查看所有贷款信息
     *
     * @param perInfo
     */
    @Override
    public List<LoanInfoVo> getAllLoanInfoByPersonId(PerInfo perInfo) {
        return loanInformationMapper.getAllLoanInfoByPersonId(perInfo);
    }

    /**
     * 根据贷款信息id删除一条数据
     *
     * @param appliNumber
     */
    @Override
    public int deleteOneLoanInfoById(int appliNumber) {
        return loanInformationMapper.deleteOneLoanInfoById(appliNumber);
    }

    /**
     * 根据贷款信息id查询一条数据
     *
     * @param appliNumber
     */
    @Override
    public LoanInformation getOneLoanInfoById(int appliNumber) {
        return loanInformationMapper.getOneLoanInfoById(appliNumber);
    }
    /**
     * 根据贷款编号修改贷款（贷款管理表中）状态
     */
    @Override
    public void updateLoanStateByApplinum(int appliNumber) {
        // TODO Auto-generated method stub
        System.out.println("service:传参"+appliNumber);
        loanInformationMapper.updateLoanStateByApplinum(appliNumber);
    }

}
