class ApplicationController < ActionController::Base
  # reset captcha code after each request for security
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :prepare_member,:except => [:logout]

  # 登录
  def prepare_member
    if session[:member_id]
      @member_curr = Member.find_by_id(session[:member_id])
      unless @member_curr
        session[:member_id] = nil
        redirect_to login_path and return
      end
    end
  end

  # 未登录过滤
  def login_filter
    if !@member_curr
      redirect_to login_path and return
    end
  end

  # 已登录过滤
  def logined_filter
    if @member_curr
      redirect_to root_path and return
    end
  end
end
