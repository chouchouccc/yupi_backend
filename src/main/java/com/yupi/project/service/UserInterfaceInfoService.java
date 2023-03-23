package com.yupi.project.service;

import com.yupi.project.model.entity.UserInterfaceInfo;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @author 86152
* @description 针对表【user_interface_info(用户调用接口关系)】的数据库操作Service
* @createDate 2023-03-18 16:01:06
*/
public interface UserInterfaceInfoService extends IService<UserInterfaceInfo> {

    void validUserInterfaceInfo(UserInterfaceInfo userinterfaceInfo, boolean add);


    boolean invokeCount(long interfaceInfoId, long userId);
}
