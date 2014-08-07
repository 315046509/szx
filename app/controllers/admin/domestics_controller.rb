class Admin::DomesticsController < Admin::MainController
  before_action :set_get_resource, :only => [:destroy]
  layout 'admin'

  def index
    @lunbos = Domestic.where(:one_city_id => params[:one_city_id]).order("id desc").page(params[:page]).per(10)
  end

  # 轮播new
  def new
    @lunbo = Domestic.new
    @parent_id = params[:one_city_id]
  end

  # 轮播create
  def create
    if request.post?
      if params[:domestic]
        avatar = params[:domestic][:avatar]
        title = params[:domestic][:title]
        description = params[:domestic][:description]
        price = params[:domestic][:price]
        one_city_id = params[:one_city_id]
        imagename = avatar.original_filename
        avatar.original_filename = Time.now.strftime("%Y%m%d%h%m%s")<<rand(99999).to_s<<imagename[imagename.length-4, 4]
        if !avatar.blank? && !title.blank? && !description.blank? && !price.blank?
          rc = Domestic.create(
              :avatar => avatar,
              :title => title,
              :description => description,
              :price => price,
              :one_city_id => one_city_id
          )
          if rc.valid?
          else
            flash[:note]="创建成功！"
            redirect_to :back and return
          end
          redirect_to admin_one_city_domestics_path(params[:one_city_id]) and return
        else
          flash[:note]="添加失败，请检查添加项是否有空值！"
          redirect_to :back
        end
      end
    end
  end

  # delete
  def destroy
    @resource = Domestic.find(params[:id])
    @resource.destroy
    respond_to do |r|
      r.html do
        redirect_to admin_one_city_domestics_path(@resource.one_city_id)
        return
      end
    end
  end

  private
  def set_get_resource
    @resource = Domestic.find(params[:id])
  end
end
