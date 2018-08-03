package com.aurloan.util;


import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.Date;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

import com.aurloan.util.IdCard;

 
/**
 * 身份证信息服务接口类
 * @author wangxw
 * @version 1.0
 * @date Jul 11, 2014 10:49:57 AM
 */
public class IdCardService {
	
	/**
	 * 生成身份证信息
	 * @param cardNo
	 * @return 返回身份证信息
	 * @throws UnsupportedEncodingException
	 */
	public static String getIdCardDetail(String cardNo) throws UnsupportedEncodingException{
		// 获取身份证信息
		IdCard idcard = getIdCardInfo(cardNo);
		
		// 存储文本信息
		StringBuffer news = new StringBuffer();
		
		if (idcard != null) {
			news.append("所属地区:"+idcard.getAtt()).append("\n");
			news.append("出生日期:"+idcard.getBorn()).append("\n");
			news.append("性别:"+idcard.getSex()).append("\n");
			news.append("区号:"+idcard.getAreaNo()).append("\n");
			news.append("邮编:"+idcard.getPostNo()).append("\n");
			news.append("省市:"+idcard.getStyle_simcall()).append("\n");
		}
		
		if(news.length() == 0){
			news.append("身份证号码").append(cardNo).append("不存在,请重新输入!");
		}
		
		return news.toString();
	}
	
	/**
	 * 获取身份证信息
	 * @param cardNo
	 * @return 返回身份证信息
	 */
	public static IdCard getIdCardInfo(String cardNo){
		URL url = null;
		IdCard idCard = new IdCard();
		try{
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance(); 
			DocumentBuilder builder = factory.newDocumentBuilder();
			
			url = new URL("http://api.k780.com:88/?app=idcard.get&idcard="+cardNo+"&appkey=10003&sign=b59bc3ef6191eb9f747dd4e83c99f2a4&format=xml");
			
			//System.out.println(url);
			
			Document doc = builder.parse(url.openStream());
			NodeList node = doc.getElementsByTagName("result"); 
			
			for(int i=0;i<node.getLength();i++){ 
				String idcard = "";
				String born = "";
				String sex = "";
				String att = "";
				String areano = "";
				String style_simcall = "";
				String postno = "";
				if(doc.getElementsByTagName("idcard").item(i).getFirstChild() != null){
					idcard = doc.getElementsByTagName("idcard").item(i).getFirstChild().getNodeValue();
				}
				if(doc.getElementsByTagName("born").item(i).getFirstChild() != null){
					born = doc.getElementsByTagName("born").item(i).getFirstChild().getNodeValue();
				}
				if(doc.getElementsByTagName("sex").item(i).getFirstChild() != null){
					sex = doc.getElementsByTagName("sex").item(i).getFirstChild().getNodeValue();
				}
				if(doc.getElementsByTagName("att").item(i).getFirstChild() != null){
					att = doc.getElementsByTagName("att").item(i).getFirstChild().getNodeValue();
				}
				if(doc.getElementsByTagName("areano").item(i).getFirstChild() != null){
					areano = doc.getElementsByTagName("areano").item(i).getFirstChild().getNodeValue();
				}
				if(doc.getElementsByTagName("style_simcall").item(i).getFirstChild() != null){
					style_simcall = doc.getElementsByTagName("style_simcall").item(i).getFirstChild().getNodeValue();
				}
				if(doc.getElementsByTagName("postno").item(i).getFirstChild() != null){
					postno = doc.getElementsByTagName("postno").item(i).getFirstChild().getNodeValue();
				}
				idCard.setIdCard(idcard);
				idCard.setBorn(born);
				idCard.setSex(sex);
				idCard.setAtt(att);
				idCard.setStyle_simcall(style_simcall);
				idCard.setPostNo(postno);
				idCard.setAreaNo(areano);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return idCard;
	}
	
	public static void main(String[] args){
		
		/*String str = "abc,12,3yy98,0";
		String[] strs=str.split(",");
		strs[0].toString();
		System.out.println(strs[0].toString());*/
		//遍历
		/*for(int i=0,len=strs.length;i<len;i++){
		  System.out.println(strs[i].toString());
		}*/
			System.out.println(Integer.parseInt((getIdCardInfo("220203199603116515").getIdCard()).substring(16, 17))%2);
			//出生年月日
			System.out.println(getIdCardInfo("110104199302262530").getBorn());
			
			Date date = new Date();    

			String year = String.format("%tY", date);   

			String month = String.format("%tB", date);   

			String day = String.format("%te", date);    

			System.out.println("今天是："+year+"-"+month+"-"+day); 
			System.out.println("邮编："+getIdCardInfo("220203199603116515").getPostNo());
			System.out.println("省,市,区:"+getIdCardInfo("220203199603116515").getStyle_simcall());
			//户籍
			String str = getIdCardInfo("220203199603116515").getStyle_simcall();
			String[] strs = str.split(",");
			System.out.println(strs[1].toString()+strs[2].toString());
			
			//身份证号
			System.out.println("身份证号:"+getIdCardInfo("220203199603116515").getIdCard());
			//区号
			System.out.println("区号："+getIdCardInfo("220203199603116515").getAreaNo());
			System.out.println("省市区："+getIdCardInfo("220203199603116515").getAtt());
			//性别
			System.out.println("性别："+getIdCardInfo("110104199302262530").getSex());
		
	}
	
}
