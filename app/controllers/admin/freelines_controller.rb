class Admin::FreelinesController < Admin::MainController
  before_action :set_get_resource, :only => [:destroy]
  layout 'admin'

  def index
    @lunbos = Freeline.where(:city_id => params[:city_id]).order("id desc").page(params[:page]).per(10)
  end

  # 轮播new
  def new
    @lunbo = Freeline.new
    @parent_id = params[:city_id]
  end

  # 轮播create
  def create
    if request.post?
      if params[:freeline]
        avatar = params[:freeline][:avatar]
        title = params[:freeline][:title]
        description = params[:freeline][:description]
        price = params[:freeline][:price]
        city_id = params[:city_id]
        imagename = avatar.original_filename
        avatar.original_filename = Time.now.strftime("%Y%m%d%h%m%s")<<rand(99999).to_s<<imagename[imagename.length-4, 4]
        if !avatar.blank? && !title.blank? && !description.blank? && !price.blank?
          rc = Freeline.create(
              :avatar => avatar,
              :title => title,
              :description => description,
              :price => price,
              :city_id => city_id
          )
          if rc.valid?
          else
            flash[:error_msg]="创建成功！"
            redirect_to :back and return
          end
          redirect_to admin_city_freelines_path(params[:city_id]) and return
        else
          flash[:error_msg]="添加失败，请检查添加项是否有空值！"
          redirect_to :back
        end
      end
    end
  end

  # delete
  def destroy
    @resource = Freeline.find(params[:id])
    @resource.destroy
    respond_to do |r|
      r.html do
        redirect_to admin_city_freelines_path(@resource.city_id)
        return
      end
    end
  end

  private
  def set_get_resource
    @resource = Freeline.find(params[:id])
  end
end

