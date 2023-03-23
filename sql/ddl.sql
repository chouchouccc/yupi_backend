-- 创建库
create database if not exists yuapi;

-- 切换库
use yuapi;

-- 用户表
create table if not exists user
(
    id           bigint auto_increment comment 'id' primary key,
    userName     varchar(254)                           null comment '用户昵称',
    userAccount  varchar(254)                           not null comment '账号',
    userAvatar   varchar(750)                          null comment '用户头像',
    gender       tinyint                                null comment '性别',
    userRole     varchar(254) default 'user'            not null comment '用户角色：user / admin',
    userPassword varchar(254)                           not null comment '密码',
    `accessKey` varchar(254) not null comment 'accessKey',
    `secretKey` varchar(254) not null comment 'secretKey',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDelete` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)',
    constraint uni_userAccount
        unique (userAccount)
) comment '用户';
