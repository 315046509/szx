class MainController < ApplicationController
  protect_from_forgery :except => :login_check
  # 首页
  def index
    # 最新公告
    @announcement = Announcement.order_ct_desc.page(params[:page]).per(1)
    # 特价旅游
    @lunbos = Tejia.order_ct_desc.page(params[:page]).per(4)

    # 城市
    @category_1_name = Addcity.question_category_name(1)
    @category_1_city = Addcity.where({:question_category_id => 100}, "title <> ''").page(params[:page]).per(9)

    @category_2_name = Addcity.question_category_name(2)
    @category_2_city = Addcity.where({:question_category_id => 101}, "title <> ''").page(params[:page]).per(9)

    @category_3_name = Addcity.question_category_name(3)
    @category_3_city = Addcity.where({:question_category_id => 102}, "title <> ''").page(params[:page]).per(9)

    @category_4_name = Addcity.question_category_name(4)
    @category_4_city = Addcity.where({:question_category_id => 4}, "title <> ''").page(params[:page]).per(6)

    @category_5_name = Addcity.question_category_name(5)
    @category_5_city = Addcity.where({:question_category_id => 103}, "title <> ''").page(params[:page]).per(6)

    @category_6_name = Addcity.question_category_name(6)
    @category_6_city = Addcity.where({:question_category_id => 6}, "title <> ''").page(params[:page]).per(6)

    @category_7_name = Addcity.question_category_name(7)
    @category_7_city = Addcity.where({:question_category_id => 8}, "title <> ''").page(params[:page]).per(6)

    @category_8_name = Addcity.question_category_name(7)
    @category_8_city = Addcity.where({:question_category_id => 9}, "title <> ''").page(params[:page]).per(30)

    # 景点
    @category_1_jingdian = Addcity.question_category_name(8)
    @category_1_jingdian = Addcity.where({:question_category_id => 100}, "title <> ''").page(params[:page]).per(9)

    @category_9_jingdian = Addcity.question_category_name(9)
    @category_9_jingdian = Addcity.where({:question_category_id => 1}, "title <> ''").page(params[:page]).per(10)

    @category_10_jingdian = Addcity.question_category_name(10)
    @category_10_jingdian = Addcity.where({:question_category_id => 9}, "title <> ''").page(params[:page]).per(10)

    @category_11_jingdian = Addcity.question_category_name(11)
    @category_11_jingdian = Addcity.where({:question_category_id => 17}, "title <> ''").page(params[:page]).per(10)

    # 港澳热门
    @hotdoor1 = Hotdoor.where(:one_city_id => 1).order("id desc").page(params[:page]).per(5)
    @hotdoor2 = Hotdoor.where(:one_city_id => 2).order("id desc").page(params[:page]).per(5)
    @hotdoor3 = Hotdoor.where(:one_city_id => 3).order("id desc").page(params[:page]).per(5)
    @hotdoor4 = Hotdoor.where(:one_city_id => 4).order("id desc").page(params[:page]).per(5)

    # 推荐
    @recommend1 = Recommend.where(:city_id => 1).order("id desc").page(params[:page]).per(5)
    @recommend2 = Recommend.where(:city_id => 2).order("id desc").page(params[:page]).per(5)
    @recommend3 = Recommend.where(:city_id => 3).order("id desc").page(params[:page]).per(5)
    @recommend4 = Recommend.where(:city_id => 4).order("id desc").page(params[:page]).per(5)

    # 出境
    @exithot1 = Exithot.where(:one_city_id => 5).order("id desc").page(params[:page]).per(5)
    @exithot2 = Exithot.where(:one_city_id => 6).order("id desc").page(params[:page]).per(5)
    @exithot3 = Exithot.where(:one_city_id => 7).order("id desc").page(params[:page]).per(5)
    @exithot4 = Exithot.where(:one_city_id => 8).order("id desc").page(params[:page]).per(5)

    # 国内
    @domestic1 = Domestic.where(:one_city_id => 9).order("id desc").page(params[:page]).per(5)
    @domestic2 = Domestic.where(:one_city_id => 10).order("id desc").page(params[:page]).per(5)
    @domestic3 = Domestic.where(:one_city_id => 11).order("id desc").page(params[:page]).per(5)
    @domestic4 = Domestic.where(:one_city_id => 12).order("id desc").page(params[:page]).per(5)
    @domestic5 = Domestic.where(:one_city_id => 13).order("id desc").page(params[:page]).per(5)
    @domestic6 = Domestic.where(:one_city_id => 14).order("id desc").page(params[:page]).per(5)

    # 经典
    #@jingdians1 = Jingdian.where(:one_city_id => 1).order("id desc").page(params[:page]).per(4)
    #@jingdians2 = Jingdian.where(:one_city_id => 2).order("id desc").page(params[:page]).per(4)
    #@jingdians3 = Jingdian.where(:one_city_id => 3).order("id desc").page(params[:page]).per(4)
    #@jingdians4 = Jingdian.where(:one_city_id => 4).order("id desc").page(params[:page]).per(4)
    #@jingdians5 = Jingdian.where(:one_city_id => 5).order("id desc").page(params[:page]).per(4)
    #@jingdians6 = Jingdian.where(:one_city_id => 6).order("id desc").page(params[:page]).per(4)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
  end

  # 城市显示页
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
    # 城市
    @category_1_name = City.question_category_name(1)
    @category_1_city = City.where({:question_category_id => 1}, "title <> ''")

    @category_2_name = City.question_category_name(2)
    @category_2_city = City.where({:question_category_id => 2}, "title <> ''")

    @category_3_name = City.question_category_name(3)
    @category_3_city = City.where({:question_category_id => 3}, "title <> ''")

    @category_4_name = City.question_category_name(4)
    @category_4_city = City.where({:question_category_id => 4}, "title <> ''")

    @category_5_name = City.question_category_name(5)
    @category_5_city = City.where({:question_category_id => 5}, "title <> ''")

    @category_6_name = City.question_category_name(6)
    @category_6_city = City.where({:question_category_id => 6}, "title <> ''")

    # 产品列表
    @lunbos = Tejia.all
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)

  end

  # 特价显示页
  def show_tejia
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
    # 特价显示页
    @tejia = Tejia.find params[:id]
    # 特价列表
    @lunbos = Tejia.order_ct_desc.page(params[:page]).per(12)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
  end

  # 热门旅游
  def show_rm
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
    @hotdoor = Hotdoor.find params[:id]
    # 热门显示页列表
    @hotdoors = Hotdoor.order_ct_desc.page(params[:page]).per(8)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
  end

  # 海外经典板块
  def show_classic
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
    @haiwai = Jingdian.find params[:id]
    # 热门显示页列表
    @haiwais = Jingdian.order_ct_desc.page(params[:page]).per(8)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
  end

  # 出境旅游
  def show_chujing
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
    @exithot = Exithot.find params[:id]
    # 热门显示页列表
    @exithots = Exithot.order_ct_desc.page(params[:page]).per(8)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
  end

  # 国内旅游
  def show_domestic
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
    @domestic = Domestic.find params[:id]
    # 热门显示页列表
    @domestics = Domestic.order_ct_desc.page(params[:page]).per(8)
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
  end

  # 最新攻略
  def show_raider
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
    @gonglue = Raider.find params[:id]
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)
  end

  # 签证
  def visa
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

    # 热门显示页列表
    @hotdoors = Freeline.order_ct_desc.page(params[:page]).per(8)

    # 签证
    @category_1_name = Visa.question_category_name(1)
    @category_1_city = Visa.where({:question_category_id => 1}, "title <> ''")

    @category_2_name = Visa.question_category_name(2)
    @category_2_city = Visa.where({:question_category_id => 2}, "title <> ''")

    @category_3_name = Visa.question_category_name(3)
    @category_3_city = Visa.where({:question_category_id => 3}, "title <> ''")

    @category_4_name = Visa.question_category_name(4)
    @category_4_city = Visa.where({:question_category_id => 4}, "title <> ''")

    @category_5_name = Visa.question_category_name(5)
    @category_5_city = Visa.where({:question_category_id => 5}, "title <> ''")
  end

  #签证
  def visa_show
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
    @visa = Visa.find params[:id]
    # 攻略
    @gonglues = Raider.order_ct_desc.page(params[:page]).per(8)

    # 热门显示页列表
    @hotdoors = Freeline.order_ct_desc.page(params[:page]).per(8)
  end

  # 登录页
  def login;
  end

  # 登录验证
  def login_check
    mobile = params[:mobile]
    passwd = params[:passwd]
    if Member.valid_use_login_params(mobile, passwd)
      member = Member.login_check(mobile, passwd)
      if member.blank?
        flash[:error_msg] = "登陆失败，请检查手机号或密码是否有误！"
        redirect_to :back and return
      else
        do_login(member)
        flash[:error_msg] = "登陆成功"
        redirect_to root_path and return
      end
    else
      flash[:error_msg] = "请填写正确的手机号和密码！"
      redirect_to :back and return
    end
  end

  # 注册页
  def signup
    @member = Member.new
  end

  # 用户注册提交
  def user_create
    name = params[:member][:name]
    mobile = params[:member][:mobile]
    email = params[:member][:email]
    passwd = params[:member][:passwd]
    passwdag = params[:member][:passwdag]
    @member = Member.new(:name => name,
                         :mobile => mobile,
                         :email => email,
                         :passwd => Member.encrypt_password(passwd)
    )
    if @member.save
      #成功
      member = Member.login_check(mobile, passwd)
      if @member
        do_login(member)
        flash[:error_msg] = "登陆成功"
        redirect_to root_path and return
      else
        redirect_to :back and return
      end
    else
      flash[:error_msg] = "您所注册的手机号存在"
      redirect_to :back and return
    end
  end

#验证登录名
  def check_login
    mobile = params[:member][:mobile]
    render :text => Member.check_login_exist(mobile) ? "false" : "true"
  end

# 注销
  def logout
    session[:member_id] = nil
    redirect_to root_path and return
  end

  protected

# 登录
  def do_login(member)
    session[:member_id] = member.id
  end
end
