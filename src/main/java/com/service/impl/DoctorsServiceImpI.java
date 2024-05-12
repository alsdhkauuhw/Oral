package com.service.impl;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.dao.DoctorsDao;
import com.entity.DoctorsEntity;
import com.service.DoctorsService;
/**
 * 医生
 */
@Service("DoctorsService")
public class DoctorsServiceImpI extends ServiceImpl<DoctorsDao, DoctorsEntity> implements DoctorsService {

    @Override
    public ArrayList<String> selectAllName() {
        // TODO Auto-generated method stub
        return baseMapper.selectAllName();
    }

}
