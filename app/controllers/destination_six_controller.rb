class DestinationSixController < ApplicationController
  # 首页
  def index
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    @hl = Taiguo.order_ct_desc.page(params[:page]).per(12)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)

    # 景点
    @category_1_jingdian = Addcity.question_category_name(1)
    @category_1_jingdian = Addcity.where({:question_category_id => 100}, "title <> ''").page(params[:page]).per(9)

    @category_9_jingdian = Addcity.question_category_name(9)
    @category_9_jingdian = Addcity.where({:question_category_id => 1}, "title <> ''").page(params[:page]).per(10)

    @category_10_jingdian = Addcity.question_category_name(10)
    @category_10_jingdian = Addcity.where({:question_category_id => 9}, "title <> ''").page(params[:page]).per(10)

    @category_11_jingdian = Addcity.question_category_name(11)
    @category_11_jingdian = Addcity.where({:question_category_id => 17}, "title <> ''").page(params[:page]).per(10)
  end

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
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 公司旅游
    @hotline = Taiguo.find params[:id]
  end
end
