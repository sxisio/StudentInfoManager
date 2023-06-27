package com.Aop;

import com.entity.OperatingInformation;
import com.service.OperatingInformationService;
import com.service.TokenService;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;

@Slf4j
@Aspect
@Component
public class Aop {


    @Autowired
    OperatingInformationService operatingInformationService;

    @SneakyThrows
    @Around("@annotation(com.Aop.LoG)")
    public Object a(ProceedingJoinPoint pjp) {
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpSession session=attr.getRequest().getSession(true);
        long ks = System.currentTimeMillis();
        Object proceed = pjp.proceed();
        Object attribute = session.getAttribute("user");
        System.out.println(attribute.toString());
        if (attribute.toString() == null) {
            System.out.println("222222");
        }
        Object target = pjp.getTarget().getClass();
        String name = pjp.getSignature().getName();
        long js = System.currentTimeMillis();
        log.info("执行{}个类中的{}方法,执行耗时{}", target, name, js - ks);
        operatingInformationService.insert(new OperatingInformation(attribute.toString(), LocalDateTime.now(),null,target.toString()+"中的"+name+"方法"));
        return proceed;
    }
}
