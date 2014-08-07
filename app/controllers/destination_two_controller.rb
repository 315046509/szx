class DestinationTwoController < ApplicationController
  # 首页
  def index
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)

    # 特价旅游
    @lunbos = Tejia.order("id desc").page(params[:page]).per(3)

    # 出境旅游
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 1}, "title <> ''").page(params[:page]).per(30)

    @category_2_name = Addcity.question_category_name(2)
    @category_2_city = Addcity.where({:question_category_id => 2}, "title <> ''").page(params[:page]).per(30)

    @category_3_name = Addcity.question_category_name(3)
    @category_3_city = Addcity.where({:question_category_id => 3}, "title <> ''").page(params[:page]).per(30)

    @category_4_name = Addcity.question_category_name(4)
    @category_4_city = Addcity.where({:question_category_id => 4}, "title <> ''").page(params[:page]).per(30)

    @category_5_name = Addcity.question_category_name(5)
    @category_5_city = Addcity.where({:question_category_id => 5}, "title <> ''").page(params[:page]).per(30)

    @category_6_name = Addcity.question_category_name(6)
    @category_6_city = Addcity.where({:question_category_id => 6}, "title <> ''").page(params[:page]).per(30)

    @category_7_name = Addcity.question_category_name(7)
    @category_7_city = Addcity.where({:question_category_id => 7}, "title <> ''").page(params[:page]).per(30)

    @category_8_name = Addcity.question_category_name(8)
    @category_8_city = Addcity.where({:question_category_id => 8}, "title <> ''").page(params[:page]).per(30)

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

    # 热门出境
    @recommend = Recommend.order_ct_desc.page(params[:page]).per(5)
    @recommend8 = Recommend.where(:city_id => 8).order("id desc").page(params[:page]).per(5)
    @recommend9 = Recommend.where(:city_id => 9).order("id desc").page(params[:page]).per(5)
    @recommend10 = Recommend.where(:city_id => 10).order("id desc").page(params[:page]).per(5)
    @recommend11 = Recommend.where(:city_id => 11).order("id desc").page(params[:page]).per(5)
    @recommend12 = Recommend.where(:city_id => 12).order("id desc").page(params[:page]).per(5)
    @recommend13 = Recommend.where(:city_id => 13).order("id desc").page(params[:page]).per(5)
    @recommend14 = Recommend.where(:city_id => 14).order("id desc").page(params[:page]).per(5)
    # 跟团
    @gentuan8 = Gentuan.where(:city_id => 8).order("id desc").page(params[:page]).per(5)
    @gentuan9 = Gentuan.where(:city_id => 9).order("id desc").page(params[:page]).per(5)
    @gentuan10 = Gentuan.where(:city_id => 10).order("id desc").page(params[:page]).per(5)
    @gentuan11 = Gentuan.where(:city_id => 11).order("id desc").page(params[:page]).per(5)
    @gentuan12 = Gentuan.where(:city_id => 12).order("id desc").page(params[:page]).per(5)
    @gentuan13 = Gentuan.where(:city_id => 13).order("id desc").page(params[:page]).per(5)
    # 自由行
    @freeline8 = Freeline.where(:city_id => 8).order("id desc").page(params[:page]).per(6)
    @freeline9 = Freeline.where(:city_id => 9).order("id desc").page(params[:page]).per(6)
    @freeline10 = Freeline.where(:city_id => 10).order("id desc").page(params[:page]).per(6)
    @freeline11 = Freeline.where(:city_id => 11).order("id desc").page(params[:page]).per(6)
    @freeline12 = Freeline.where(:city_id => 12).order("id desc").page(params[:page]).per(6)
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
