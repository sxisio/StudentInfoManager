package com.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.dao.DaoyuanDao;
import com.entity.DaoyuanEntity;
import com.entity.view.DaoyuanView;
import com.entity.vo.DaoyuanVO;
import com.service.DaoyuanService;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("daoyuanService")
public class DaoyuanServiceImpl extends ServiceImpl<DaoyuanDao, DaoyuanEntity> implements DaoyuanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DaoyuanEntity> page = this.selectPage(
                new Query<DaoyuanEntity>(params).getPage(),
                new EntityWrapper<DaoyuanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DaoyuanEntity> wrapper) {
		  Page<DaoyuanView> page =new Query<DaoyuanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DaoyuanVO> selectListVO(Wrapper<DaoyuanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DaoyuanVO selectVO(Wrapper<DaoyuanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DaoyuanView> selectListView(Wrapper<DaoyuanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DaoyuanView selectView(Wrapper<DaoyuanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<DaoyuanEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<DaoyuanEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<DaoyuanEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }




}
