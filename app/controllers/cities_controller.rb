class CitiesController < ApplicationController
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
    # 旅游路线
    @hotline = Trave.find params[:id]
  end

  # 香港游
  def xianggang
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 100}, "title <> ''").page(params[:page]).per(30)
    @travels_100 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)
  end

  # 澳门游
  def aomen
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 101}, "title <> ''").page(params[:page]).per(30)
    @travels_101 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 港澳游
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
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
    # 热门列表
    @hotdoors = Announcement.order_ct_desc.page(params[:page]).per(12)
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 102}, "title <> ''").page(params[:page]).per(30)
    @travels_102 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end
  # 非洲
  def feizhou
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 103}, "title <> ''").page(params[:page]).per(30)
    @travels_103 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 热门出境
  def remenchujing
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 1}, "title <> ''").page(params[:page]).per(30)
    @travels_1 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 热门海岛
  def remenhaidao
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 2}, "title <> ''").page(params[:page]).per(30)
    @travels_2 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 东南亚
  def dongnanya
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 3}, "title <> ''").page(params[:page]).per(30)
    @travels_3 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 亚洲
  def yazhou
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 4}, "title <> ''").page(params[:page]).per(30)
    @travels_4 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 欧洲
  def ouzhou
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 5}, "title <> ''").page(params[:page]).per(30)
    @travels_5 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 美洲
  def meizhou
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 6}, "title <> ''").page(params[:page]).per(30)
    @travels_6 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 中东非洲
  def zhongdongfeizhou
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 7}, "title <> ''").page(params[:page]).per(30)
    @travels_7 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 澳洲
  def aozhou
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 8}, "title <> ''").page(params[:page]).per(30)
    @travels_8 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 热门国内
  def remenguonei
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 9}, "title <> ''").page(params[:page]).per(30)
    @travels_9 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 华南
  def huanan
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 10}, "title <> ''").page(params[:page]).per(30)
    @travels_10 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 西南
  def xinan
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 11}, "title <> ''").page(params[:page]).per(30)
    @travels_11 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 华东
  def huadong
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 12}, "title <> ''").page(params[:page]).per(30)
    @travels_12 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 华中
  def huazhong
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 13}, "title <> ''").page(params[:page]).per(30)
    @travels_13 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 华北
  def huabei
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 14}, "title <> ''").page(params[:page]).per(30)
    @travels_14 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 西部
  def xibu
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 15}, "title <> ''").page(params[:page]).per(30)
    @travels_15 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 东北
  def dongbei
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 16}, "title <> ''").page(params[:page]).per(30)
    @travels_16 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end

  # 长春
  def changchun
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
    # 路线列表
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 17}, "title <> ''").page(params[:page]).per(30)
    @travels_17 = Trave.where("addcity_id <=10").order("id desc").page(params[:page]).per(20)

  end
end
