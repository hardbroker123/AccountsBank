package com.aurloan.pojo;

public class SharePerson {
//    共有人信息
    private Integer shareId;//共有人id
    private String shareName;//共有人姓名
    private String shareCardId;//共有人身份证
    private String shareTelNum;//共有人电话
    private String shareRelation;//与共有人的关系

    public SharePerson() {
    }

    public SharePerson(Integer shareId, String shareName, String shareCardId, String shareTelNum, String shareRelation) {
        this.shareId = shareId;
        this.shareName = shareName;
        this.shareCardId = shareCardId;
        this.shareTelNum = shareTelNum;
        this.shareRelation = shareRelation;
    }

    public Integer getShareId() {
        return shareId;
    }

    public void setShareId(Integer shareId) {
        this.shareId = shareId;
    }

    public String getShareName() {
        return shareName;
    }

    public void setShareName(String shareName) {
        this.shareName = shareName;
    }

    public String getShareCardId() {
        return shareCardId;
    }

    public void setShareCardId(String shareCardId) {
        this.shareCardId = shareCardId;
    }

    public String getShareTelNum() {
        return shareTelNum;
    }

    public void setShareTelNum(String shareTelNum) {
        this.shareTelNum = shareTelNum;
    }

    public String getShareRelation() {
        return shareRelation;
    }

    public void setShareRelation(String shareRelation) {
        this.shareRelation = shareRelation;
    }

    @Override
    public String toString() {
        return "SharePerson{" +
                "shareId=" + shareId +
                ", shareName='" + shareName + '\'' +
                ", shareCardId='" + shareCardId + '\'' +
                ", shareTelNum='" + shareTelNum + '\'' +
                ", shareRelation='" + shareRelation + '\'' +
                '}';
    }
}
