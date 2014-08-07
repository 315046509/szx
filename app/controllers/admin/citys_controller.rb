class Admin::CitysController < Admin::MainController
  layout 'admin'

  def index
    @jobs = City.order_ct_desc.page(params[:page]).per(10)
  end

  def new
    @job = City.new
  end

  def create
    @job = City.new(
        :title => params[:city][:title],
        :question_category_id => params[:city][:question_category_id]
    )
    if @job.save
      flash[:error_msg] = "创建成功"
      redirect_to admin_citys_path and return
    else
      flash[:error_msg] = @job.errors.values.join(";    ")
      redirect_to :back and return
    end
  end

  def edit
    @job = City.find(params[:id])
  end

  def update
    @category = City.find(params[:id])
    update_category = @category.update_attributes(
        :title => params[:city][:title]
    )
    if update_category
      respond_to do |category|
        category.html {
          redirect_to admin_citys_path and return
        }
      end
    end
  end

  #   删除
  def destroy
    @job = City.find(params[:id])
    flash[:error_msg] = @job.destroy ? "删除成功" : "请稍后再试"
    redirect_to admin_citys_path and return
  end
end
