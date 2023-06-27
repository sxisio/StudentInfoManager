package com.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.dao.OperatingInformationDao;
import com.entity.OperatingInformation;
import com.service.OperatingInformationService;
import org.springframework.stereotype.Service;

/**
 * @author unimpeded
 * * @date 2023/5/10
 */
@Service
public class OperatingInformationServiceImpl extends ServiceImpl<OperatingInformationDao, OperatingInformation> implements OperatingInformationService {
}
