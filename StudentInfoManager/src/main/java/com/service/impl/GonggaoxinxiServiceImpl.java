package com.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.dao.GonggaoxinxiDao;
import com.entity.GonggaoxinxiEntity;
import com.entity.view.GonggaoxinxiView;
import com.entity.vo.GonggaoxinxiVO;
import com.service.GonggaoxinxiService;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("gonggaoxinxiService")
public class GonggaoxinxiServiceImpl extends ServiceImpl<GonggaoxinxiDao, GonggaoxinxiEntity> implements GonggaoxinxiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<GonggaoxinxiEntity> page = this.selectPage(
                new Query<GonggaoxinxiEntity>(params).getPage(),
                new EntityWrapper<GonggaoxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<GonggaoxinxiEntity> wrapper) {
		  Page<GonggaoxinxiView> page =new Query<GonggaoxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<GonggaoxinxiVO> selectListVO(Wrapper<GonggaoxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public GonggaoxinxiVO selectVO(Wrapper<GonggaoxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<GonggaoxinxiView> selectListView(Wrapper<GonggaoxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public GonggaoxinxiView selectView(Wrapper<GonggaoxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
