class Admin::AccountsController < Admin::MainController
  layout 'admin'
  #用户管理/用户列表
  def index
    @accounts = Member.order_ct_desc.page(params[:page]).per(10)
  end

  #   删除
  def destroy
    @accounts = Member.find(params[:id])
    flash[:error_msg] = @accounts.destroy ? "删除成功" : "请稍后再试"
    redirect_to admin_accounts_path and return
  end
end

