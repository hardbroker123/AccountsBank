package com.aurloan.controller;

import com.aurloan.pojo.CompanyInformation;
import com.aurloan.pojo.PerInfo;
import com.aurloan.pojo.UserAuthInfo;
import com.aurloan.helper.RandomNumber;
import com.aurloan.service.CompanyInformationService;
import com.aurloan.service.PerInfoService;
import com.aurloan.service.UserAuthInfoService;

import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


//授权信息
@Controller
@RequestMapping("/jsp/loanApply")
public class UserAuthInfoController {

    @Autowired
    UserAuthInfoService userAuthInfoService;

    @Autowired
    PerInfoService perInfoService;

    @Autowired
    CompanyInformationService companyInformationService;
    public UserAuthInfoService getUserAuthInfoService() {
        return userAuthInfoService;
    }
    public void setUserAuthInfoService(UserAuthInfoService userAuthInfoService) {
        this.userAuthInfoService = userAuthInfoService;
    }

    public PerInfoService getPerInfoService() {
        return perInfoService;
    }

    public void setPerInfoService(PerInfoService perInfoService) {
        this.perInfoService = perInfoService;
    }

    public CompanyInformationService getCompanyInformationService() {
        return companyInformationService;
    }

    public void setCompanyInformationService(CompanyInformationService companyInformationService) {
        this.companyInformationService = companyInformationService;
    }

    /**
     * 验证授权信息
     * */

    @RequestMapping("/insertOrUpdateOneUserAuthInfo.action")
    public @ResponseBody Double insertOrUpdateOneUserAuthInfo(@RequestParam(value = "account")String account,@RequestParam(value = "userRegId")int personId,HttpSession session){

        UserAuthInfo userAuthInfo=new UserAuthInfo();
        //判断这张卡有没有被授权过，0没有，1有
//        随机生成[0-0.2]两位小数
        userAuthInfo.setTransMoney(RandomNumber.RandomTwoDecimal());
        userAuthInfo.setPersonId(personId);
        userAuthInfo.setAccount(account);
        
        int num=userAuthInfoService.getUserAuthInfoIdByAccount(account)==null?0:1;
        userAuthInfo.setAuthState("0");
        if (num==0){
//            添加
            int temp=userAuthInfoService.insertOneUserAuthInfo(userAuthInfo);
        }
        else {
//            更新
            int temp=userAuthInfoService.updateOneUserAuthInfo(userAuthInfo);
        }

      return userAuthInfo.getTransMoney();

    }
    /**
     * 验证信息完善
     * */
    @RequestMapping("/CheckPersonAndCompanyInfo.action")
    public @ResponseBody int CheckPersonAndCompanyInfo(@RequestParam(value = "account")String account,@RequestParam(value = "userRegId")Integer userRegId, HttpSession session){
        int num,num1;
        //查看本注册用户是否填写过个人信息
        PerInfo person=perInfoService.getOnePerInfoByRegId(userRegId);
        if (person.getPersonId()==null){
             num=0;

        }else {
            //银行卡已授权，更改状态
             num = 0;
            num1 = 0;
            UserAuthInfo userAuthInfo = new UserAuthInfo(account, "1");
            userAuthInfoService.updateUserAuthStateByAccount(userAuthInfo);
            //查询
            userAuthInfo = userAuthInfoService.getUserAuthInfoIdByAccount(account);

            session.setAttribute("userAuthInfo", userAuthInfo);
            //        判断个人信息是否完善，如果完善，返回1，不完善返回0
            //PerInfo perInfo = perInfoService.getOnePerInfoByPersonId(person.getPersonId());
           // CompanyInformation companyInfo = companyInformationService.getOneCompanyInfo(person.getPersonId());

           /* num = (perInfo == null || perInfo.getPersonName() == null || perInfo.getCity() == null || perInfo.getDetailedAddress() == null || perInfo.getMaritalStatus() == null) ? 0 : 1;
            num1 = (companyInfo == null || companyInfo.getCompanyName() == null || companyInfo.getBusinessLicense() == null || companyInfo.getLocationOfCompany() == null) ? 0 : 1;
            if (num==1){
                session.setAttribute("PerInfo",perInfo);
            }
            num = (num == 0 || num1 == 0) ? 0 : 1;*/

        }
        return 1;
    }
    /**
     * 验证转账金额
     * */
    @RequestMapping("/checkReAccountByCard.action")
    public @ResponseBody double checkReAccountByCard(@RequestParam(value = "account")String account,@RequestParam(value = "reAccount")double reAccount, HttpSession session){
        reAccount=userAuthInfoService.checkReAccountByCard(account);

        return reAccount;
    }

    /**
     * 根据用户id查询所有授权银行卡信息
     *
     * */
    @RequestMapping("/getAllAccountCards")
    public void getAllAccountCards(HttpSession session,HttpServletResponse resp) {
//		从session中取得personid
        PerInfo person=(PerInfo) session.getAttribute("PerInfo");
        int personid=person.getPersonId();

        List<UserAuthInfo> userAuthInfos = userAuthInfoService.getAllAccountCards(personid);
//		使用json工具将查询到List传至jsp页面
        JSONArray data = JSONArray.fromObject(userAuthInfos);
        System.out.println(data);
        try {
            resp.getWriter().write(data.toString());
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }


}
