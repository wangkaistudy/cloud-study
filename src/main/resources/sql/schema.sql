drop table if exists tbProduct;
drop table if exists tbProduct_Comment;
drop table if exists tbUser;
-- 创建商品表
create table tbProduct
(
    id                  int unsigned not null auto_increment comment '主键',
    name                varchar(100) comment '商品名称',
    cover_image       varchar(100) comment '商品封面图片',
    price               int not null default 0 comment '商品价格(分)',
  primary key (id)
);
-- 创建商品评论表
create table tbProduct_Comment
(
  id                  int unsigned not null auto_increment comment '主键',
  product_id        int unsigned comment '所属商品',
  author_id          int unsigned comment '作者Id',
    content            varchar(200) comment '评论内容',
    created            TIMESTAMP comment '创建时间',
    primary key (id)
);
-- 创建用户表
create table tbUser
(
    id                  int unsigned not null auto_increment comment '主键',
    nickname           varchar(50) comment '用户昵称',
    avatar             varchar(255) comment '用户头像',
    primary key (id)
);

-- 导入测试商品列表
insert into tbProduct (id, name, cover_image, price)
values(1, '测试商品-001', '/products/cover/001.png', 100);
insert into tbProduct (id, name, cover_image, price)
    values(2, '测试商品-002', '/products/cover/002.png', 200);
insert into tbProduct (id, name, cover_image, price)
values(3, '测试商品-003', '/products/cover/003.png', 300);
insert into tbProduct (id, name, cover_image, price)
    values(4, '测试商品-004', '/products/cover/004.png', 400);
insert into tbProduct (id, name, cover_image, price)
values(5, '测试商品-005', '/products/cover/005.png', 500);
-- 导入测试用户列表
insert into tbUser (id, nickname, avatar)
    values(1, 'zhangSan', '/users/avatar/zhangsan.png');
insert into tbUser (id, nickname, avatar)
    values(2, 'lisi', '/users/avatar/lisi.png');
insert into tbUser (id, nickname, avatar)
    values(3, 'wangwu', '/users/avatar/wangwu.png');
insert into tbUser (id, nickname, avatar)
    values(4, 'yanxiaoliu', '/users/avatar/yanxiaoliu.png');
-- 导入商品3的评论列表
insert into tbProduct_Comment (id, product_id, author_id, content, created)
    values(1, 3, 1, '非常不错的商品', CURRENT_TIMESTAMP());
insert into tbProduct_Comment (id, product_id, author_id, content, created)
    values(2, 3, 3, '非常不错的商品+1', CURRENT_TIMESTAMP());
insert into tbProduct_Comment (id, product_id, author_id, content, created)
values(3, 3, 4, '哈哈，谁用谁知道', CURRENT_TIMESTAMP());
