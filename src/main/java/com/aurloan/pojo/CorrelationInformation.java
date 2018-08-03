package com.aurloan.pojo;

//关联表信息
public class CorrelationInformation {
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

    public CorrelationInformation(Integer personId, String qqNumber,
    		String weChat) {
    	super();
    	this.personId = personId;
    	this.qqNumber = qqNumber;
    	this.weChat = weChat;
    }
	public CorrelationInformation(Integer informationId, Integer personId,
			String qqNumber, String weChat) {
		super();
		this.informationId = informationId;
		this.personId = personId;
		this.qqNumber = qqNumber;
		this.weChat = weChat;
	}

	public CorrelationInformation() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "CorrelationInformation [informationId=" + informationId
				+ ", personId=" + personId + ", qqNumber=" + qqNumber
				+ ", weChat=" + weChat + "]";
	}

	public CorrelationInformation(String qqNumber, String weChat) {
		super();
		this.qqNumber = qqNumber;
		this.weChat = weChat;
	}


    
    
}
