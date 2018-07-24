package com.aurloan.pojo;

public class Houses {
//    房产信息
    private Integer houseId;//房产编号
    private Integer personId;//拥有人id
    private String province;//省
    private String municipality;//市
    private String county;//区县
    private Integer estateId;//楼盘id
    private Double houseArea;//房屋面积
    private String liveNow;//是否是现居住地
    private String rentNow;//是否出租
    private String shareNow;//是否有共有人
    private Integer shareId;//共有人id
    private String houseType;//房屋状态（是否被抵押等）


    public Integer getHouseId() {
        return houseId;
    }

    public void setHouseId(Integer houseId) {
        this.houseId = houseId;
    }

    public Integer getPersonId() {
        return personId;
    }

    public void setPersonId(Integer personId) {
        this.personId = personId;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getMunicipality() {
        return municipality;
    }

    public void setMunicipality(String municipality) {
        this.municipality = municipality;
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public Integer getEstateId() {
        return estateId;
    }

    public void setEstateId(Integer estateId) {
        this.estateId = estateId;
    }

    public Double getHouseArea() {
        return houseArea;
    }

    public void setHouseArea(Double houseArea) {
        this.houseArea = houseArea;
    }

    public String getLiveNow() {
        return liveNow;
    }

    public void setLiveNow(String liveNow) {
        this.liveNow = liveNow;
    }

    public String getRentNow() {
        return rentNow;
    }

    public void setRentNow(String rentNow) {
        this.rentNow = rentNow;
    }

    public String getShareNow() {
        return shareNow;
    }

    public void setShareNow(String shareNow) {
        this.shareNow = shareNow;
    }

    public Integer getShareId() {
        return shareId;
    }

    public void setShareId(Integer shareId) {
        this.shareId = shareId;
    }

    public String getHouseType() {
        return houseType;
    }

    public void setHouseType(String houseType) {
        this.houseType = houseType;
    }

    public Houses() {
    }

    public Houses(Integer houseId, Integer personId, String province, String municipality, String county, Integer estateId, Double houseArea, String liveNow, String rentNow, String shareNow, Integer shareId, String houseType) {
        this.houseId = houseId;
        this.personId = personId;
        this.province = province;
        this.municipality = municipality;
        this.county = county;
        this.estateId = estateId;
        this.houseArea = houseArea;
        this.liveNow = liveNow;
        this.rentNow = rentNow;
        this.shareNow = shareNow;
        this.shareId = shareId;
        this.houseType = houseType;
    }

    @Override
    public String toString() {
        return "Houses{" +
                "houseId=" + houseId +
                ", personId=" + personId +
                ", province='" + province + '\'' +
                ", municipality='" + municipality + '\'' +
                ", county='" + county + '\'' +
                ", estateId=" + estateId +
                ", houseArea=" + houseArea +
                ", liveNow='" + liveNow + '\'' +
                ", rentNow='" + rentNow + '\'' +
                ", shareNow='" + shareNow + '\'' +
                ", shareId=" + shareId +
                ", houseType='" + houseType + '\'' +
                '}';
    }
}
