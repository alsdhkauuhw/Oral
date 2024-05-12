package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.annotation.IgnoreAuth;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.entity.DoctorsEntity;
import com.service.DoctorsService;
import com.service.TokenService;
import com.utils.R;
import org.springframework.web.bind.annotation.RequestBody;


/**
 * 医生
 */
@RequestMapping("doctors")
@RestController
public class DoctorsController {
    /**
	 * 登录
	 */
    @Autowired
    private DoctorsService doctorsService;
	@Autowired
    private TokenService tokenService;
	@IgnoreAuth
	@PostMapping(value = "/login")
	public R login(String username, String password, String captcha, HttpServletRequest request) {
		DoctorsEntity doctor = doctorsService.selectOne(new EntityWrapper<DoctorsEntity>().eq("username", username));
	
		if(doctor==null || !doctor.getPassword().equals(password)) {
			System.out.println("2222");
			return R.error("账号或密码不正确");
		}
		String token = tokenService.generateToken(doctor.getDoctorID(),username, "users", "医生");
		return R.ok().put("token", token);
	}

	@IgnoreAuth
	@PostMapping(value= "/name")
	public R doctorName(String username, String password, String captcha, HttpServletRequest request) {
		//TODO: process POST request
		//System.out.println("111111");
		ArrayList<String> doctor = doctorsService.selectAllName();
		System.out.println(doctor.get(0));
		return R.ok().put("doctorname", doctor);
	}
	
}
