package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DaoyuanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DaoyuanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DaoyuanView;


/**
 * 导员
 *
 * @author 
 * @email 
 * @date 2023-03-15 16:45:53
 */
public interface DaoyuanService extends IService<DaoyuanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DaoyuanVO> selectListVO(Wrapper<DaoyuanEntity> wrapper);
   	
   	DaoyuanVO selectVO(@Param("ew") Wrapper<DaoyuanEntity> wrapper);
   	
   	List<DaoyuanView> selectListView(Wrapper<DaoyuanEntity> wrapper);
   	
   	DaoyuanView selectView(@Param("ew") Wrapper<DaoyuanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DaoyuanEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<DaoyuanEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<DaoyuanEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<DaoyuanEntity> wrapper);



}

