class DestinationEightController < ApplicationController
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

    # 城市
    @category_1_name = Hotel.question_category_name(1)
    @category_1_city = Hotel.where({:question_category_id => 1}, "title <> ''").page(params[:page]).per(10)
    @category_2_name = Hotel.question_category_name(2)
    @category_2_city = Hotel.where({:question_category_id => 2}, "title <> ''").page(params[:page]).per(10)
    @category_3_name = Hotel.question_category_name(3)
    @category_3_city = Hotel.where({:question_category_id => 3}, "title <> ''").page(params[:page]).per(10)

    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)

    # 推荐
    @hotels1 = OccupancyHotel.where(:hotel_id => 1).order("id desc").page(params[:page]).per(10)
    @hotels2 = OccupancyHotel.where(:hotel_id => 2).order("id desc").page(params[:page]).per(10)
    @hotels3 = OccupancyHotel.where(:hotel_id => 3).order("id desc").page(params[:page]).per(10)
    @hotels4 = OccupancyHotel.where(:hotel_id => 4).order("id desc").page(params[:page]).per(10)
    @hotels5 = OccupancyHotel.where(:hotel_id => 5).order("id desc").page(params[:page]).per(10)
    @hotels6 = OccupancyHotel.where(:hotel_id => 6).order("id desc").page(params[:page]).per(10)
    @hotels7 = OccupancyHotel.where(:hotel_id => 7).order("id desc").page(params[:page]).per(10)
    @hotels8 = OccupancyHotel.where(:hotel_id => 8).order("id desc").page(params[:page]).per(10)
  end

  # 酒店浏览
  def show
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
    # 酒店显示页
    @hotels = OccupancyHotel.find params[:id]
    @hotel = OccupancyHotel.order_ct_desc.page(params[:page]).per(10)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
  end
end
