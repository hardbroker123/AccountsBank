package com.aurloan.pojo;

//关联表信息
public class CorrelationInformatin {
    private Integer informationId;//信息id编号
    private Integer personId;//拥有人id编号
    private String qqNumber;//qq号
    private String weChat;//微信号


    public Integer getInformationId() {
        return informationId;
    }

    public void setInformationId(Integer informationId) {
        this.informationId = informationId;
    }

    public Integer getPersonId() {
        return personId;
    }

    public void setPersonId(Integer personId) {
        this.personId = personId;
    }

    public String getQqNumber() {
        return qqNumber;
    }

    public void setQqNumber(String qqNumber) {
        this.qqNumber = qqNumber;
    }

    public String getWeChat() {
        return weChat;
    }

    public void setWeChat(String weChat) {
        this.weChat = weChat;
    }

    public CorrelationInformatin() {
    }

    public CorrelationInformatin(Integer informationId, Integer personId, String qqNumber, String weChat) {
        this.informationId = informationId;
        this.personId = personId;
        this.qqNumber = qqNumber;
        this.weChat = weChat;
    }

    @Override
    public String toString() {
        return "CorrelationInformatin{" +
                "informationId=" + informationId +
                ", personId=" + personId +
                ", qqNumber='" + qqNumber + '\'' +
                ", weChat='" + weChat + '\'' +
                '}';
    }

	public CorrelationInformatin(String qqNumber, String weChat) {
		super();
		this.qqNumber = qqNumber;
		this.weChat = weChat;
	}
    
    
}
