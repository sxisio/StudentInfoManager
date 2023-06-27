package com.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.dao.XueshengchengjiDao;
import com.entity.XueshengchengjiEntity;
import com.entity.view.XueshengchengjiView;
import com.entity.vo.XueshengchengjiVO;
import com.service.XueshengchengjiService;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("xueshengchengjiService")
public class XueshengchengjiServiceImpl extends ServiceImpl<XueshengchengjiDao, XueshengchengjiEntity> implements XueshengchengjiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XueshengchengjiEntity> page = this.selectPage(
                new Query<XueshengchengjiEntity>(params).getPage(),
                new EntityWrapper<XueshengchengjiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XueshengchengjiEntity> wrapper) {
		  Page<XueshengchengjiView> page =new Query<XueshengchengjiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XueshengchengjiVO> selectListVO(Wrapper<XueshengchengjiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XueshengchengjiVO selectVO(Wrapper<XueshengchengjiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XueshengchengjiView> selectListView(Wrapper<XueshengchengjiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XueshengchengjiView selectView(Wrapper<XueshengchengjiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<XueshengchengjiEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<XueshengchengjiEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<XueshengchengjiEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }




}
