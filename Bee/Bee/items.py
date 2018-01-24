# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class BeeItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    pass


class MovieItem(scrapy.Item):
    # define the fields for your item here like:
    douban_id = scrapy.Field() #豆瓣ID
    tag = scrapy.Field() #标签：电影、电视剧、综艺、动画、纪录片、短片
    title = scrapy.Field()  #影片标题
    language = scrapy.Field() #语言类型
    runtime = scrapy.Field() #影片时长
    alias_name = scrapy.Field() #影片别名, 多个以 "|" 隔开
    category = scrapy.Field() #影片类型, 多个以 "|" 隔开
    director = scrapy.Field()  #导演, {"人物ID1":"人物名1", "人物ID2":"人物名2"}
    actor = scrapy.Field() #主演, {"人物ID1":"人物名1", "人物ID2":"人物名2"}
    editor = scrapy.Field() #编剧, {"人物ID1":"人物名1", "人物ID2":"人物名2"}
    year = scrapy.Field() #年份
    area = scrapy.Field() #制片国家/地区, 如:中国大陆、美国、日本
    release_date = scrapy.Field() #上映时间, ["2018-01-12(中国大陆)", "2018-01-16(中国台湾)"]
    imdb = scrapy.Field() #IMDB序列
    photo = scrapy.Field() #海报地址
    introduction = scrapy.Field() #影片简介信息
    web_url = scrapy.Field() #官网
    plays_url = scrapy.Field() #播放链接: [{"from":"腾讯视频","url":"播放链接", "price" : "价格或免费"}]
    u_tags = scrapy.Field() #用户自定义标签, ["tag1", "tag2", "tag3", "tag4"]
    rating_num = scrapy.Field() #评分
    votes = scrapy.Field() #投票人数
    rating_weight = scrapy.Field() #投票权重: {"stars1":"2.8%","stars2":"7.8%","stars3":"26.7%", "star4":"37.0%","star5":"25.8%"}
    interests = scrapy.Field() #看过的人数
    wishes = scrapy.Field() #想看的人数
    picture_num = scrapy.Field() #影片当前图片数
    review_num = scrapy.Field() #影片当前影评数
    comment_num = scrapy.Field() #影片当前短评数
