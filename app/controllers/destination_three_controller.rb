class DestinationThreeController < ApplicationController
  # 首页
  def index
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)

    # 特价旅游
    @lunbos = Tejia.order("id desc").page(params[:page]).per(3)

    # 港澳旅游
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 9}, "title <> ''").page(params[:page]).per(30)

    @category_2_name = Addcity.question_category_name(2)
    @category_2_city = Addcity.where({:question_category_id => 10}, "title <> ''").page(params[:page]).per(30)

    @category_3_name = Addcity.question_category_name(3)
    @category_3_city = Addcity.where({:question_category_id => 11}, "title <> ''").page(params[:page]).per(30)

    @category_4_name = Addcity.question_category_name(4)
    @category_4_city = Addcity.where({:question_category_id => 12}, "title <> ''").page(params[:page]).per(30)

    @category_5_name = Addcity.question_category_name(5)
    @category_5_city = Addcity.where({:question_category_id => 13}, "title <> ''").page(params[:page]).per(30)

    @category_6_name = Addcity.question_category_name(6)
    @category_6_city = Addcity.where({:question_category_id => 14}, "title <> ''").page(params[:page]).per(30)

    @category_7_name = Addcity.question_category_name(7)
    @category_7_city = Addcity.where({:question_category_id => 15}, "title <> ''").page(params[:page]).per(30)

    @category_8_name = Addcity.question_category_name(8)
    @category_8_city = Addcity.where({:question_category_id => 16}, "title <> ''").page(params[:page]).per(30)

    # 景点
    @category_1_jingdian = Addcity.question_category_name(1)
    @category_1_jingdian = Addcity.where({:question_category_id => 100}, "title <> ''").page(params[:page]).per(9)

    @category_9_jingdian = Addcity.question_category_name(9)
    @category_9_jingdian = Addcity.where({:question_category_id => 1}, "title <> ''").page(params[:page]).per(10)

    @category_10_jingdian = Addcity.question_category_name(10)
    @category_10_jingdian = Addcity.where({:question_category_id => 9}, "title <> ''").page(params[:page]).per(10)

    @category_11_jingdian = Addcity.question_category_name(11)
    @category_11_jingdian = Addcity.where({:question_category_id => 17}, "title <> ''").page(params[:page]).per(10)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)

    # 热门国内
    @recommend = Recommend.order_ct_desc.page(params[:page]).per(5)
    @recommend15 = Recommend.where(:city_id => 15).order("id desc").page(params[:page]).per(5)
    @recommend16 = Recommend.where(:city_id => 16).order("id desc").page(params[:page]).per(5)
    @recommend17 = Recommend.where(:city_id => 17).order("id desc").page(params[:page]).per(5)
    @recommend18 = Recommend.where(:city_id => 18).order("id desc").page(params[:page]).per(5)
    @recommend19 = Recommend.where(:city_id => 19).order("id desc").page(params[:page]).per(5)
    @recommend20 = Recommend.where(:city_id => 20).order("id desc").page(params[:page]).per(5)
    @recommend21 = Recommend.where(:city_id => 21).order("id desc").page(params[:page]).per(5)
    # 跟团
    @gentuan15 = Gentuan.where(:city_id => 15).order("id desc").page(params[:page]).per(5)
    @gentuan16 = Gentuan.where(:city_id => 16).order("id desc").page(params[:page]).per(5)
    @gentuan17 = Gentuan.where(:city_id => 17).order("id desc").page(params[:page]).per(5)
    @gentuan18 = Gentuan.where(:city_id => 18).order("id desc").page(params[:page]).per(5)
    @gentuan19 = Gentuan.where(:city_id => 19).order("id desc").page(params[:page]).per(5)
    @gentuan20 = Gentuan.where(:city_id => 20).order("id desc").page(params[:page]).per(5)
    # 自由行
    @freeline15 = Freeline.where(:city_id => 15).order("id desc").page(params[:page]).per(6)
    @freeline16 = Freeline.where(:city_id => 16).order("id desc").page(params[:page]).per(6)
    @freeline17 = Freeline.where(:city_id => 17).order("id desc").page(params[:page]).per(6)
    @freeline18 = Freeline.where(:city_id => 18).order("id desc").page(params[:page]).per(6)
    @freeline19 = Freeline.where(:city_id => 19).order("id desc").page(params[:page]).per(6)
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
