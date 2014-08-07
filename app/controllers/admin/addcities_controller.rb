class Admin::AddcitiesController < Admin::MainController
  layout 'admin'

  def index
    @jobs = Addcity.order_ct_desc.page(params[:page]).per(10)
  end

  def new
    @job = Addcity.new
  end

  def create
    @job = Addcity.new(
        :title => params[:addcity][:title],
        :question_category_id => params[:addcity][:question_category_id]
    )
    if @job.save
      flash[:error_msg] = "创建成功"
      redirect_to admin_addcities_path and return
    else
      flash[:error_msg] = @job.errors.values.join(";    ")
      redirect_to :back and return
    end
  end

  def edit
    @addcity = Addcity.find(params[:id])
  end

  def update
    @addcity = Addcity.find(params[:id])
    update_category = @addcity.update_attributes(
        :title => params[:addcity][:title]
    )
    if update_category
      respond_to do |category|
        category.html {
          redirect_to admin_addcities_path and return
        }
      end
    end
  end
end