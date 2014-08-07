class Admin::VisasController < Admin::MainController
  layout 'admin'

  def index
    @visas = Visa.order_ct_desc.page(params[:page]).per(10)
  end

  def new
    @visa = Visa.new
  end

  def create
    @visa = Visa.new(
        :title => params[:visa][:title],
        :price => params[:visa][:price],
        :bianhao => params[:visa][:bianhao],
        :leixing => params[:visa][:leixing],
        :banlishijian => params[:visa][:banlishijian],
        :mianshi => params[:visa][:mianshi],
        :youxiaoqi => params[:visa][:youxiaoqi],
        :rujingcishu => params[:visa][:rujingcishu],
        :zuichangshijian => params[:visa][:zuichangshijian],
        :shoukefanwei => params[:visa][:shoukefanwei],
        :description => params[:visa][:description],
        :question_category_id => params[:visa][:question_category_id]
    )
    if @visa.save
      flash[:error_msg] = "创建成功"
      redirect_to admin_visas_path and return
    else
      flash[:error_msg] = @visa.errors.values.join(";    ")
      redirect_to :back and return
    end
  end

  #   删除
  def destroy
    @visa = Visa.find(params[:id])
    flash[:error_msg] = @visa.destroy ? "删除成功" : "请稍后再试"
    redirect_to admin_visas_path and return
  end
end
