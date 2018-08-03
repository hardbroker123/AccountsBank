package com.aurloan.controller;


import com.aurloan.pojo.LoanInformation;
import com.aurloan.pojo.PerInfo;
import com.aurloan.pojo.UserRegInfo;
import com.aurloan.pojo.vo.LoanInfoVo;
import com.aurloan.service.LoanInformationService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONArray;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import java.util.List;

@Controller
@RequestMapping("/jsp")
public class LoanInfoController {

    @Autowired
    LoanInformationService loanInformationService;

    public LoanInformationService getLoanInformationService() {
        return loanInformationService;
    }

    public void setLoanInformationService(LoanInformationService loanInformationService) {
        this.loanInformationService = loanInformationService;
    }

/**
 * 贷款申请表单提交，先添加贷款信息表，不包括审批时间
 * 然后通过查询根据用户id查询待审批的贷款信息，放入“贷款审批”页面展示
 * * */
    @ResponseBody
    @RequestMapping("/loanApply/insertLoanInfo")
    public int insertOneLoanInfo(LoanInformation loanInformation, HttpSession session){
        //添加<mapper层appTime为null>
        int num=loanInformationService.insertOneLoanInfo(loanInformation);
        //查询
        //通过用户id和贷款信息状态查看并展示
        loanInformation=loanInformationService.selectOneLoanInfoByPerIdAndState(loanInformation);
        session.setAttribute("loanInfo",loanInformation);
        System.out.println(loanInformation);
        //将贷款信息编号传出来
        return loanInformation.getAppliNumber();
    }

/**
 *  贷款申请表更新，不包括审批时间
 *  根据贷款编号修改贷款信息
 * */

    @ResponseBody
    @RequestMapping("/loanApply/updateOneLoanInfo")
    public int updateOneLoanInfo(LoanInformation loanInformation,HttpSession session){
//        Timestamp time= new Timestamp(System.currentTimeMillis());//获取系统当前时间
//        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        String timeStr = df.format(time);
//        time = Timestamp.valueOf(timeStr);
//        loanInformation.setAppTime(time);
        //更新,不包括appTime
        int num=loanInformationService.updateOneLoanInfo(loanInformation);
        //查询
        //通过贷款编号查询贷款信息
        loanInformation=loanInformationService.selectOneLoanInfoByLoanId(loanInformation);
        session.setAttribute("loanInfo",loanInformation);
        System.out.println(loanInformation);
        return num;
    }



    /**
     * 根据personId查看所有贷款信息
     *
     * */
    @ResponseBody
    @RequestMapping("/getAllLoanInfoByPersonId")
    public void getAllLoanInfoByPersonId(HttpSession session, HttpServletResponse resp){
        //查询所有信息

        PerInfo perInfo=new PerInfo();
        perInfo= (PerInfo) session.getAttribute("PerInfo");
        List<LoanInfoVo> loanInfoList =loanInformationService.getAllLoanInfoByPersonId(perInfo);
        System.out.println(loanInfoList.size());
        for (LoanInfoVo l:loanInfoList
                ) {
            System.out.println(l);
        }
        JSONArray loanInfoJSON = JSONArray.fromObject(loanInfoList);
        System.out.println(loanInfoJSON);
        try {
            resp.setContentType("text/html;charset=UTF-8");
            resp.getWriter().write(loanInfoJSON.toString());
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    /**
     * 根据贷款信息id查询一条数据
     *
     * */
    @ResponseBody
    @RequestMapping("/getOneLoanInfoById")
    public int getOneLoanInfoById(@RequestParam(value = "appliNumber")int appliNumber,HttpSession session){
        //查询
        System.out.println(appliNumber);
        LoanInformation loanInformation=loanInformationService.getOneLoanInfoById(appliNumber);

        session.setAttribute("loanInfo",loanInformation);

        return 1;
    }
    /**
     * 根据贷款信息id删除一条数据
     *
     * */
    @ResponseBody
    @RequestMapping("/deleteOneLoanInfoById")
    public int deleteOneLoanInfoById(@RequestParam(value = "appliNumber")int appliNumber){
        //删除
        int num=loanInformationService.deleteOneLoanInfoById(appliNumber);
        return num==1?1:0;
    }

    /**
     * 根据贷款信息id修改贷款状态
     *
     * */
    @RequestMapping("/updateLoanStateByAppliNumber")
    public void updateLoanStateByAppliNumber(int appliNumber) {
        loanInformationService.updateLoanStateByApplinum(appliNumber);
    }

}
