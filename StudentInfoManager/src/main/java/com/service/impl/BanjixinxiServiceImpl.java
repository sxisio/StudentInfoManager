package com.service.impl;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.dao.BanjixinxiDao;
import com.entity.BanjixinxiEntity;
import com.entity.view.BanjixinxiView;
import com.entity.vo.BanjixinxiVO;
import com.service.BanjixinxiService;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("banjixinxiService")
public class BanjixinxiServiceImpl extends ServiceImpl<BanjixinxiDao, BanjixinxiEntity> implements BanjixinxiService {
	private RedisTemplate<String, String> redisTemplate;

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BanjixinxiEntity> page = this.selectPage(
                new Query<BanjixinxiEntity>(params).getPage(),
                new EntityWrapper<BanjixinxiEntity>()
        );
		//存入缓存
		redisTemplate.opsForValue().set("PageUtils", JSON.toJSONString(page));
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<BanjixinxiEntity> wrapper) {
		  Page<BanjixinxiView> page =new Query<BanjixinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<BanjixinxiVO> selectListVO(Wrapper<BanjixinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public BanjixinxiVO selectVO(Wrapper<BanjixinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<BanjixinxiView> selectListView(Wrapper<BanjixinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public BanjixinxiView selectView(Wrapper<BanjixinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
