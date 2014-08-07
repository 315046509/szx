class Admin::MainController < Admin::AdminController
  layout 'admin_no_sider'

  # 管理员登录
  def login;
  end

  # 验证登录
  def check_login
    login_name = params[:login_name]
    password = params[:password]
    if (login_name == "travel" && password == "travel" )
      #登录成功
      do_admin_login("")
      redirect_to admin_accounts_path and return
    else
      flash[:notice] = "登录失败，请检查是否填写错误！"
      redirect_to "/admin/login"
    end
  end

  # 退出
  def logout
    session[:admin_id] = nil
    flash[:notice] = "已成功退出"
    redirect_to admin_login_path and return
  end

  def do_admin_login(admin_account)
    session[:admin_id] = 1
  end
end
