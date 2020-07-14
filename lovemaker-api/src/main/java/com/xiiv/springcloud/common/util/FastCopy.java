package com.xiiv.springcloud.common.util;

import org.apache.commons.beanutils.BeanMap;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.BeanWrapper;
import org.springframework.beans.BeanWrapperImpl;
import org.springframework.util.StringUtils;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.util.*;

public class FastCopy {

    /**
     * 类型转换：实体Vo <->实体  例如：UserVo <-> User
     * 支持一级复杂对象复制
     */
    public static <T> T copy(Object src, Class<T> targetType) {
        T target = null;
        try {
            target = targetType.newInstance();
            BeanWrapper targetBean = new BeanWrapperImpl(target);
            BeanMap srcBean = new BeanMap(src);
            for (Object key : srcBean.keySet()) {
                try {
                    String srcPropertyName = key + "";
                    Object srcPropertyVal = srcBean.get(key);
                    //&& StringUtils.isEmpty(targetBean.getPropertyValue(srcPropertyName))
                    if (!StringUtils.isEmpty(srcPropertyVal) && !"class".equals(srcPropertyName)) {
                        Class srcPropertyType = srcBean.getType(srcPropertyName);
                        Class targetPropertyType = targetBean.getPropertyType(srcPropertyName);
                        if (targetPropertyType != null) {
                            if (srcPropertyType == targetPropertyType) {
                                targetBean.setPropertyValue(srcPropertyName, srcPropertyVal);
                            } else {
                                if(srcPropertyVal == null){
                                    continue;
                                }

                                Object targetPropertyVal = targetPropertyType.newInstance();
                                BeanUtils.copyProperties(srcPropertyVal, targetPropertyVal);
                                targetBean.setPropertyValue(srcPropertyName, targetPropertyVal);

                                BeanWrapper targetBean2 = new BeanWrapperImpl(targetPropertyVal);
                                BeanMap srcBean2 = new BeanMap(srcPropertyVal);
                                srcBean2.keySet().forEach((srcPropertyName2) -> {
                                    Class srcPropertyType2 = srcBean2.getType((String) srcPropertyName2);
                                    Class targetPropertyType2 = targetBean2.getPropertyType((String) srcPropertyName2);
                                    if (targetPropertyType2 != null && srcPropertyType2 != targetPropertyType2
                                            && srcBean2.get(srcPropertyName2) != null && !"class".equals(srcPropertyName2)) {
                                        Object targetPropertyVal2 = null;
                                        try {
                                            targetPropertyVal2 = targetPropertyType2.newInstance();
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                        BeanUtils.copyProperties(srcBean2.get(srcPropertyName2), targetPropertyVal2);
                                        targetBean2.setPropertyValue((String) srcPropertyName2, targetPropertyVal2);
                                    }
                                });

                            }
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return target;
    }

    /**
     * 类型转换：实体Vo <->实体  例如：List<UserVo> <-> List<User>
     */
    public static <T> List<T> copyList(List srcList, Class<T> targetType) {
        List<T> newList = new ArrayList<>();
        for (Object entity : srcList) {
            newList.add(copy(entity, targetType));
        }
        return newList;
    }

    /**
     * 获取/过滤对象的空属性
     */
    public static String[] getNullProperties(Object src) {
        BeanWrapper srcBean = new BeanWrapperImpl(src); //1.获取Bean
        Set<String> properties = new HashSet<>(); //3.获取Bean的空属性
        for (PropertyDescriptor p : srcBean.getPropertyDescriptors()) {
            String propertyName = p.getName();
            Object srcValue = srcBean.getPropertyValue(propertyName);
            if (StringUtils.isEmpty(srcValue)) {
                srcBean.setPropertyValue(propertyName, null);
                properties.add(propertyName);
            }
        }
        String[] result = new String[properties.size()];
        return properties.toArray(result);
    }

    /**
     * 获取对象的非空属性
     */
    public static Map<String, Object> getNotNullProperties(Object src) {
        BeanWrapper srcBean = new BeanWrapperImpl(src); //1.获取Bean
        PropertyDescriptor[] pds = srcBean.getPropertyDescriptors(); //2.获取Bean的属性描述
        Map<String, Object> properties = new LinkedHashMap<>();  //3.获取Bean的非空属性
        for (PropertyDescriptor p : pds) {
            String key = p.getName();
            Object value = srcBean.getPropertyValue(key);
            if (!StringUtils.isEmpty(value) && !"class".equals(key)) {
                properties.put(key, value);
            }
        }

        return properties;
    }

    /**
     * 将Object数组转为实体类VO
     */
    public static <V> List<V> getEntityVo(List<Object[]> propertyArrayList, Class<V> voClass) {
        List<V> list = new ArrayList<>();
        try {
            if (propertyArrayList != null) {
                for (Object[] propertyArray : propertyArrayList) {
                    V vo = voClass.newInstance();
                    Field[] fields = vo.getClass().getDeclaredFields();
                    for (int i = 0; i < propertyArray.length; i++) {
                        Field voField = fields[i];
                        Object queryVal = propertyArray[i];
                        if (voField.getType() == String.class && queryVal instanceof BigDecimal) {
                            queryVal = String.valueOf(queryVal);
                        }
                        voField.setAccessible(true);//获取授权
                        voField.set(vo, queryVal);
                    }
                    list.add(vo);
                }

            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return list;
    }

}