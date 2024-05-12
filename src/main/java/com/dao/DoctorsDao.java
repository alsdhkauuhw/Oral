package com.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.entity.DoctorsEntity;

public interface DoctorsDao extends BaseMapper<DoctorsEntity>{
    
    @Select("SELECT Name FROM doctors")
    ArrayList<String> selectAllName();
}
