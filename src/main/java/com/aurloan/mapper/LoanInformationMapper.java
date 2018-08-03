package com.aurloan.mapper;

import com.aurloan.pojo.LoanInformation;
import com.aurloan.pojo.PerInfo;
import com.aurloan.pojo.vo.LoanInfoVo;

import java.util.List;

public interface LoanInformationMapper {
    /**
     * 通过用户id和贷款信息状态查看贷款信息
     * */
    LoanInformation selectOneLoanInfoByPerIdAndState(LoanInformation loanInformation);
    /**
     * 根据贷款编号查询贷款信息
     * */
    LoanInformation selectOneLoanInfoByLoanId(LoanInformation loanInformation);
    /**
     * 添加一条贷款信息,不包括审批时间
     * */
    int insertOneLoanInfo(LoanInformation loanInformation);
    /**
     * 贷款申请表更新
     * 根据贷款编号修改贷款信息
     * */
    int updateOneLoanInfo(LoanInformation loanInformation);
    /**
     * 根据personId查看所有贷款信息
     */
    List<LoanInfoVo> getAllLoanInfoByPersonId(PerInfo perInfo);
    /**
     * 根据贷款信息id删除一条数据
     *
     */
    int deleteOneLoanInfoById(int appliNumber);
    /**
     * 根据贷款信息id查询一条数据
     *
     */
    LoanInformation getOneLoanInfoById(int appliNumber);
    /**
     * 根据贷款编号修改贷款（贷款管理表中）状态
     */
    public void updateLoanStateByApplinum(int appliNumber);
}
