-- 数据库文件

-- 影片入库基础信息表

CREATE TABLE `t_movie` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `douban_id` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '豆瓣ID',
    `tag` VARCHAR(50) NOT NULL DEFAULT '' COMMENT '标签：电影、电视剧、综艺、动画、纪录片、短片',
    `title` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '影片标题',
    `language` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '语言类型',
    `runtime` VARCHAR(50) NOT NULL DEFAULT '' COMMENT '影片时长',
    `alias_name` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '影片别名, 多个以 "|" 隔开',
    `category` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '影片类型, 多个以 "|" 隔开',
    `director` VARCHAR(255) NOT NULL DEFAULT '0' COMMENT '导演, {"人物ID1":"人物名1", "人物ID2":"人物名2"}',
    `actor` VARCHAR(255) NOT NULL DEFAULT '0' COMMENT '主演, {"人物ID1":"人物名1", "人物ID2":"人物名2"}',
    `editor` VARCHAR(255) NOT NULL DEFAULT '0' COMMENT '编辑, {"人物ID1":"人物名1", "人物ID2":"人物名2"}',
    `year` INT(11) NOT NULL DEFAULT '0' COMMENT '年份',
    `area` VARCHAR(50) NOT NULL DEFAULT '0' COMMENT '制片国家/地区, 如:中国大陆、美国、日本',
    `release_date` VARCHAR(255) NOT NULL DEFAULT '0' COMMENT '上映时间, ["2018-01-12(中国大陆)", "2018-01-16(中国台湾)"]',
    `imdb` VARCHAR(10) NOT NULL DEFAULT '0' COMMENT 'IMDB序列',
    `photo` VARCHAR(255) NOT NULL DEFAULT '' COMMENT '海报地址',
    `introduction` TEXT NULL COMMENT '影片简介信息',
    `web_url` VARCHAR(255) NOT NULL DEFAULT '0' COMMENT '官网',
    `plays_url` VARCHAR(255) NOT NULL DEFAULT '0' COMMENT '播放链接: [{"from":"腾讯视频","url":"播放链接", "price" : "价格或免费"}]',
    `u_tags` VARCHAR(255) NOT NULL DEFAULT '0.0' COMMENT '用户自定义标签, ["tag1", "tag2", "tag3", "tag4"]',
    `rating_num` FLOAT(10,1) NOT NULL DEFAULT '0.0' COMMENT '评分',
    `votes` INT(11) NOT NULL DEFAULT '0' COMMENT '投票人数',
    `rating_weight` VARCHAR(255) NOT NULL DEFAULT '0.0' COMMENT '投票权重: {"stars1":"2.8%","stars2":"7.8%","stars3":"26.7%", "star4":"37.0%","star5":"25.8%"}',
    `interests` INT(11) NOT NULL DEFAULT '0' COMMENT '看过的人数',
    `wishes` INT(11) NOT NULL DEFAULT '0' COMMENT '想看的人数',
    `picture_num` INT(11) NOT NULL DEFAULT '0' COMMENT '图片数',
    `review_num` INT(11) NOT NULL DEFAULT '0' COMMENT '影评数',
    `comment_num` INT(11) NOT NULL DEFAULT '0' COMMENT '短评数',
    `created_at` INT(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
    `updated_at` INT(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
    PRIMARY KEY (`id`),
    INDEX `douban_id` (`douban_id`)
)
COMMENT='影片入库基础信息表' ENGINE=MyISAM;
