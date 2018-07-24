package com.aurloan.pojo;

public class Estate {
//    楼盘名称
    private Integer estateId;//楼盘id
    private String houseDistrict;//小区名
    private String buildingNumber;//楼号
    private String unitNumber;//单元号
    private String roomNumber;//房间号


    public Integer getEstateId() {
        return estateId;
    }

    public void setEstateId(Integer estateId) {
        this.estateId = estateId;
    }

    public String getHouseDistrict() {
        return houseDistrict;
    }

    public void setHouseDistrict(String houseDistrict) {
        this.houseDistrict = houseDistrict;
    }

    public String getBuildingNumber() {
        return buildingNumber;
    }

    public void setBuildingNumber(String buildingNumber) {
        this.buildingNumber = buildingNumber;
    }

    public String getUnitNumber() {
        return unitNumber;
    }

    public void setUnitNumber(String unitNumber) {
        this.unitNumber = unitNumber;
    }

    public String getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(String roomNumber) {
        this.roomNumber = roomNumber;
    }

    public Estate() {
    }

    public Estate(Integer estateId, String houseDistrict, String buildingNumber, String unitNumber, String roomNumber) {
        this.estateId = estateId;
        this.houseDistrict = houseDistrict;
        this.buildingNumber = buildingNumber;
        this.unitNumber = unitNumber;
        this.roomNumber = roomNumber;
    }

    @Override
    public String toString() {
        return "Estate{" +
                "estateId=" + estateId +
                ", houseDistrict='" + houseDistrict + '\'' +
                ", buildingNumber='" + buildingNumber + '\'' +
                ", unitNumber='" + unitNumber + '\'' +
                ", roomNumber='" + roomNumber + '\'' +
                '}';
    }
}
