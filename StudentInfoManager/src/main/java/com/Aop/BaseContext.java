package com.Aop;

public class BaseContext {
    private static final ThreadLocal<Long> THREAD_LOCAL = new ThreadLocal<>();

    public static void setThreadLocal(Long currentId) {
        THREAD_LOCAL.set(currentId);

    }

    public static Long getThreadLocal() {
        return THREAD_LOCAL.get();

    }

}
