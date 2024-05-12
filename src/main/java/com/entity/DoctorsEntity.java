package com.entity;

import java.io.Serializable;
import java.sql.Date;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;

/* 
 * 医生
 */
@TableName("doctors")
public class DoctorsEntity implements Serializable{
    private static final long serialVersionUID = 1L;

    @TableId(type = IdType.AUTO)
    private Long DoctorID;
    private String Name;
    private String Gender;
    private Date BirthDate;
    private String Specialization;
    private int YearsOfExperience;
    private String Email;
    private String ContactNumber;
    private String Password;
    private String username;

    public Long getDoctorID(){
        return DoctorID;
    }
    public void setDoctorID(Long id){
        this.DoctorID = id;
    }

    public String getName(){
        return Name;
    }
    public void setName(String Name){
        this.Name = Name;
    }

    public String getGender(){
        return Gender;
    }
    public void setGender(String gender){
        this.Gender = gender;
    }

    public Date getBirthDate(){
        return BirthDate;
    }
    public void setBirthDate(Date birthdate){
        this.BirthDate = birthdate;
    }

    public String getSpecialization(){
        return Specialization;
    }
    public void setSpecialization(String specialization){
        this.Specialization = specialization;
    }

    public int getYearsOfExperience(){
        return YearsOfExperience;
    }
    public void setYearsOfExperience(int yearsOfExperience){
        this.YearsOfExperience = yearsOfExperience;
    }
    
    public String getEmail(){
        return Email;
    }
    public void setEmail(String email){
        this.Email = email;
    }

    public String getContactNumber(){
        return ContactNumber;
    }
    public void setContactNumber(String contactNumber){
        this.ContactNumber = contactNumber;
    }

    public String getPassword(){
        return Password;
    }
    public void setPassword(String password){
        this.Password = password;
    }

    public String getUsername(){
        return username;
    }
    public void setUsername(String username){
        this.username = username;
    }
}
