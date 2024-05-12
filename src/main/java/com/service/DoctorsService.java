package com.service;

import java.util.ArrayList;

import com.baomidou.mybatisplus.service.IService;
import com.entity.DoctorsEntity;

public interface DoctorsService extends IService<DoctorsEntity>{

    ArrayList<String> selectAllName();
}
