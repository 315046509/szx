class DestinationOneController < ApplicationController
  # 首页
  def index
    # 景点
    @category_1_jingdian = Addcity.question_category_name(1)
    @category_1_jingdian = Addcity.where({:question_category_id => 100}, "title <> ''").page(params[:page]).per(9)

    @category_9_jingdian = Addcity.question_category_name(9)
    @category_9_jingdian = Addcity.where({:question_category_id => 1}, "title <> ''").page(params[:page]).per(10)

    @category_10_jingdian = Addcity.question_category_name(10)
    @category_10_jingdian = Addcity.where({:question_category_id => 9}, "title <> ''").page(params[:page]).per(10)

    @category_11_jingdian = Addcity.question_category_name(11)
    @category_11_jingdian = Addcity.where({:question_category_id => 17}, "title <> ''").page(params[:page]).per(10)

    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)

    # 特价旅游
    @lunbos = Tejia.order("id desc").page(params[:page]).per(3)

    # 港澳旅游
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 100}, "title <> ''").page(params[:page]).per(30)

    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)

    # 热门港澳台
    @recommend = Recommend.order_ct_desc.page(params[:page]).per(5)
    @recommend1 = Recommend.where(:city_id => 1).order("id desc").page(params[:page]).per(5)
    @recommend2 = Recommend.where(:city_id => 2).order("id desc").page(params[:page]).per(5)
    @recommend3 = Recommend.where(:city_id => 3).order("id desc").page(params[:page]).per(5)
    @recommend4 = Recommend.where(:city_id => 4).order("id desc").page(params[:page]).per(5)
    @recommend5 = Recommend.where(:city_id => 5).order("id desc").page(params[:page]).per(5)
    @recommend6 = Recommend.where(:city_id => 6).order("id desc").page(params[:page]).per(5)
    @recommend7 = Recommend.where(:city_id => 7).order("id desc").page(params[:page]).per(5)
    # 跟团
    @gentuan1 = Gentuan.where(:city_id => 1).order("id desc").page(params[:page]).per(5)
    @gentuan2 = Gentuan.where(:city_id => 2).order("id desc").page(params[:page]).per(5)
    @gentuan3 = Gentuan.where(:city_id => 3).order("id desc").page(params[:page]).per(5)
    @gentuan4 = Gentuan.where(:city_id => 4).order("id desc").page(params[:page]).per(5)
    @gentuan5 = Gentuan.where(:city_id => 5).order("id desc").page(params[:page]).per(5)
    @gentuan6 = Gentuan.where(:city_id => 6).order("id desc").page(params[:page]).per(5)
    # 自由行
    @freeline1 = Freeline.where(:city_id => 1).order("id desc").page(params[:page]).per(6)
    @freeline2 = Freeline.where(:city_id => 2).order("id desc").page(params[:page]).per(6)
    @freeline3 = Freeline.where(:city_id => 3).order("id desc").page(params[:page]).per(6)
    @freeline4 = Freeline.where(:city_id => 4).order("id desc").page(params[:page]).per(6)
    @freeline5 = Freeline.where(:city_id => 5).order("id desc").page(params[:page]).per(6)
  end

  def gangao
    # 景点
    @category_1_jingdian = Addcity.question_category_name(1)
    @category_1_jingdian = Addcity.where({:question_category_id => 100}, "title <> ''").page(params[:page]).per(9)

    @category_9_jingdian = Addcity.question_category_name(9)
    @category_9_jingdian = Addcity.where({:question_category_id => 1}, "title <> ''").page(params[:page]).per(10)

    @category_10_jingdian = Addcity.question_category_name(10)
    @category_10_jingdian = Addcity.where({:question_category_id => 9}, "title <> ''").page(params[:page]).per(10)

    @category_11_jingdian = Addcity.question_category_name(11)
    @category_11_jingdian = Addcity.where({:question_category_id => 17}, "title <> ''").page(params[:page]).per(10)

    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 热门显示页
    @hotdoor = Recommend.find params[:id]
    # 热门显示页列表
    @hotdoors = Recommend.order_ct_desc.page(params[:page]).per(8)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
  end

  def gentuan
    # 景点
    @category_1_jingdian = Addcity.question_category_name(1)
    @category_1_jingdian = Addcity.where({:question_category_id => 100}, "title <> ''").page(params[:page]).per(9)

    @category_9_jingdian = Addcity.question_category_name(9)
    @category_9_jingdian = Addcity.where({:question_category_id => 1}, "title <> ''").page(params[:page]).per(10)

    @category_10_jingdian = Addcity.question_category_name(10)
    @category_10_jingdian = Addcity.where({:question_category_id => 9}, "title <> ''").page(params[:page]).per(10)

    @category_11_jingdian = Addcity.question_category_name(11)
    @category_11_jingdian = Addcity.where({:question_category_id => 17}, "title <> ''").page(params[:page]).per(10)

    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 热门显示页
    @hotdoor = Gentuan.find params[:id]
    # 热门显示页列表
    @hotdoors = Gentuan.order_ct_desc.page(params[:page]).per(8)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
  end

  def ziyouxing
    # 景点
    @category_1_jingdian = Addcity.question_category_name(1)
    @category_1_jingdian = Addcity.where({:question_category_id => 100}, "title <> ''").page(params[:page]).per(9)

    @category_9_jingdian = Addcity.question_category_name(9)
    @category_9_jingdian = Addcity.where({:question_category_id => 1}, "title <> ''").page(params[:page]).per(10)

    @category_10_jingdian = Addcity.question_category_name(10)
    @category_10_jingdian = Addcity.where({:question_category_id => 9}, "title <> ''").page(params[:page]).per(10)

    @category_11_jingdian = Addcity.question_category_name(11)
    @category_11_jingdian = Addcity.where({:question_category_id => 17}, "title <> ''").page(params[:page]).per(10)

    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 热门显示页
    @hotdoor = Freeline.find params[:id]
    # 热门显示页列表
    @hotdoors = Freeline.order_ct_desc.page(params[:page]).per(8)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
  end
end
