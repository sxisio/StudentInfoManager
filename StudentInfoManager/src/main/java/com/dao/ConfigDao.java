
package com.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.entity.ConfigEntity;
import org.springframework.cache.annotation.Cacheable;

/**
 * 配置
 */

public interface ConfigDao extends BaseMapper<ConfigEntity> {
	
}
