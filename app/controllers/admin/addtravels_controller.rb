class Admin::AddtravelsController < Admin::MainController
  before_action :set_get_resource, :only => [:destroy]
  layout 'admin'

  # 旅游路线列表
  def index
    @travels = Trave.where(:addcity_id => params[:addcity_id]).order("id desc").page(params[:page]).per(10)
  end

  # 添加旅游路线
  def new
    @travel = Trave.new
    @parent_id = params[:addcity_id]
  end

  # 添加旅游路线
  def create
    if request.post?
      if params[:trave]
        avatar = params[:trave][:avatar]
        avatar1 = params[:trave][:avatar1]
        title = params[:trave][:title]
        description = params[:trave][:description]
        price = params[:trave][:price]
        xingcheng = params[:trave][:xingcheng]
        feiyongshuoming = params[:trave][:feiyongshuoming]
        wenxintishi = params[:trave][:wenxintishi]
        yudingtishi = params[:trave][:yudingtishi]
        addcity_id = params[:addcity_id]
        imagename = avatar.original_filename
        avatar.original_filename = Time.now.strftime("%Y%m%d%h%m%s")<<rand(99999).to_s<<imagename[imagename.length-4, 4]
        if !avatar.blank? && !avatar1.blank? && !title.blank? && !description.blank? && !price.blank? && !xingcheng.blank? && !feiyongshuoming.blank? && !wenxintishi.blank? && !yudingtishi.blank?
          rc = Trave.create(
              :avatar => avatar,
              :avatar1 => avatar1,
              :title => title,
              :description => description,
              :price => price,
              :xingcheng => xingcheng,
              :feiyongshuoming => feiyongshuoming,
              :wenxintishi => wenxintishi,
              :yudingtishi => yudingtishi,
              :addcity_id => addcity_id
          )
          if rc.valid?
          else
            flash[:note]="创建成功！"
            redirect_to :back and return
          end
          redirect_to admin_addcity_addtravels_path(params[:addcity_id]) and return
        else
          flash[:note]="添加失败，请检查添加项是否有空值！"
          redirect_to :back
        end
      end
    end
  end

  def show
    @hotline = Trave.find(params[:id])
  end

  # delete
  def destroy

    @resource = Trave.find(params[:id])
    @resource.destroy
    respond_to do |r|
      r.html do
        redirect_to admin_addcity_addtravels_path(params[:addcity_id])
        return
      end
    end
  end

  private
  def set_get_resource
    @resource = Trave.find(params[:id])
  end
end
