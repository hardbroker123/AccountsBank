package com.aurloan.pojo;

//企业信息
public class CompanyInformation {
    private Integer companyId;  //企业id
    private Integer personId;  //申请人id
    private String companyName;  //企业名称
    private String legalRepresentative;  //法定代表人
    private String registeredCapital;   //注册资本金
    private String locationOfCompany;  //企业所在地
    private String unionpayMerchanNumber;//银联商户号
    private String taxRegistrationNumber;//税务注册号
    private Integer employedYear;//从业年限
    private Integer businessYear;//就业年限
    private Integer employeesNumber;//雇员人数
    private String businessLicense;//营业执照编号
    private String comPersonState;//申请人状态

    public CompanyInformation(Integer companyId, Integer personId, String companyName, String legalRepresentative, String registeredCapital, String locationOfCompany, String unionpayMerchanNumber, String taxRegistrationNumber, Integer employedYear, Integer businessYear, Integer employeesNumber, String businessLicense, String comPersonState) {
        this.companyId = companyId;
        this.personId = personId;
        this.companyName = companyName;
        this.legalRepresentative = legalRepresentative;
        this.registeredCapital = registeredCapital;
        this.locationOfCompany = locationOfCompany;
        this.unionpayMerchanNumber = unionpayMerchanNumber;
        this.taxRegistrationNumber = taxRegistrationNumber;
        this.employedYear = employedYear;
        this.businessYear = businessYear;
        this.employeesNumber = employeesNumber;
        this.businessLicense = businessLicense;
        this.comPersonState = comPersonState;
    }

    public String getComPersonState() {
        return comPersonState;
    }

    public void setComPersonState(String comPersonState) {
        this.comPersonState = comPersonState;
    }

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public Integer getPersonId() {
        return personId;
    }

    public void setPersonId(Integer personId) {
        this.personId = personId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getLegalRepresentative() {
        return legalRepresentative;
    }

    public void setLegalRepresentative(String legalRepresentative) {
        this.legalRepresentative = legalRepresentative;
    }

    public String getRegisteredCapital() {
        return registeredCapital;
    }

    public void setRegisteredCapital(String registeredCapital) {
        this.registeredCapital = registeredCapital;
    }

    public String getLocationOfCompany() {
        return locationOfCompany;
    }

    public void setLocationOfCompany(String locationOfCompany) {
        this.locationOfCompany = locationOfCompany;
    }

    public String getUnionpayMerchanNumber() {
        return unionpayMerchanNumber;
    }

    public void setUnionpayMerchanNumber(String unionpayMerchanNumber) {
        this.unionpayMerchanNumber = unionpayMerchanNumber;
    }

    public String getTaxRegistrationNumber() {
        return taxRegistrationNumber;
    }

    public void setTaxRegistrationNumber(String taxRegistrationNumber) {
        this.taxRegistrationNumber = taxRegistrationNumber;
    }

    public Integer getEmployedYear() {
        return employedYear;
    }

    public void setEmployedYear(Integer employedYear) {
        this.employedYear = employedYear;
    }

    public Integer getBusinessYear() {
        return businessYear;
    }

    public void setBusinessYear(Integer businessYear) {
        this.businessYear = businessYear;
    }

    public Integer getEmployeesNumber() {
        return employeesNumber;
    }

    public void setEmployeesNumber(Integer employeesNumber) {
        this.employeesNumber = employeesNumber;
    }

    public String getBusinessLicense() {
        return businessLicense;
    }

    public void setBusinessLicense(String businessLicense) {
        this.businessLicense = businessLicense;
    }

    public CompanyInformation() {
    }

    public CompanyInformation(Integer companyId, Integer personId, String companyName, String legalRepresentative, String registeredCapital, String locationOfCompany, String unionpayMerchanNumber, String taxRegistrationNumber, Integer employedYear, Integer businessYear, Integer employeesNumber, String businessLicense) {
        this.companyId = companyId;
        this.personId = personId;
        this.companyName = companyName;
        this.legalRepresentative = legalRepresentative;
        this.registeredCapital = registeredCapital;
        this.locationOfCompany = locationOfCompany;
        this.unionpayMerchanNumber = unionpayMerchanNumber;
        this.taxRegistrationNumber = taxRegistrationNumber;
        this.employedYear = employedYear;
        this.businessYear = businessYear;
        this.employeesNumber = employeesNumber;
        this.businessLicense = businessLicense;
    }

    @Override
    public String toString() {
        return "CompanyInformation{" +
                "companyId=" + companyId +
                ", personId=" + personId +
                ", companyName='" + companyName + '\'' +
                ", legalRepresentative='" + legalRepresentative + '\'' +
                ", registeredCapital='" + registeredCapital + '\'' +
                ", locationOfCompany='" + locationOfCompany + '\'' +
                ", unionpayMerchanNumber='" + unionpayMerchanNumber + '\'' +
                ", taxRegistrationNumber='" + taxRegistrationNumber + '\'' +
                ", employedYear=" + employedYear +
                ", businessYear=" + businessYear +
                ", employeesNumber=" + employeesNumber +
                ", businessLicense='" + businessLicense + '\'' +
                '}';
    }
}
