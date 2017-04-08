package com.bean;

import java.util.Date;

public class Student {
    private Integer id;

    private String sno;

    private String name;

    private String sex;

    private String address;

    private Date born;

    private String postcode;

    private String nation;

    private String tel;

    private String major;

    private Date admissiontime;

    private Integer xz;

    private String graduateschool;

    private String idcard;

    private String politicaloutlook;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno == null ? null : sno.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Date getBorn() {
        return born;
    }

    public void setBorn(Date born) {
        this.born = born;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode == null ? null : postcode.trim();
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation == null ? null : nation.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major == null ? null : major.trim();
    }

    public Date getAdmissiontime() {
        return admissiontime;
    }

    public void setAdmissiontime(Date admissiontime) {
        this.admissiontime = admissiontime;
    }

    public Integer getXz() {
        return xz;
    }

    public void setXz(Integer xz) {
        this.xz = xz;
    }

    public String getGraduateschool() {
        return graduateschool;
    }

    public void setGraduateschool(String graduateschool) {
        this.graduateschool = graduateschool == null ? null : graduateschool.trim();
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard == null ? null : idcard.trim();
    }

    public String getPoliticaloutlook() {
        return politicaloutlook;
    }

    public void setPoliticaloutlook(String politicaloutlook) {
        this.politicaloutlook = politicaloutlook == null ? null : politicaloutlook.trim();
    }
}