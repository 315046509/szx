class Admin::AnnouncementsController < Admin::MainController
  layout 'admin'

  def index
    @jobs = Announcement.order_ct_desc.page(params[:page]).per(10)
  end

  def new
    @job = Announcement.new
  end

  def create
    @job = Announcement.new(
        :title => params[:announcement][:title]
    )
    if @job.save
      flash[:error_msg] = "创建成功"
      redirect_to admin_announcements_path and return
    else
      flash[:error_msg] = @job.errors.values.join(";    ")
      redirect_to :back and return
    end
  end

  def show
    @job = Announcement.find params[:id]
  end

  #   删除
  def destroy
    @job = Announcement.find(params[:id])
    flash[:error_msg] = @job.destroy ? "删除成功" : "请稍后再试"
    redirect_to admin_announcements_path and return
  end
end
