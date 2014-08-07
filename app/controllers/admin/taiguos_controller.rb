class Admin::TaiguosController < Admin::MainController
  layout 'admin'
  def index
    @hl = Taiguo.order_ct_desc.page(params[:page]).per(10)
  end

  def new
    @hotline = Taiguo.new
  end

  def create
    if request.post?
      if params[:taiguo]
        avatar = params[:taiguo][:avatar]
        avatar1 = params[:taiguo][:avatar1]
        title = params[:taiguo][:title]
        description = params[:taiguo][:description]
        price = params[:taiguo][:price]
        xingcheng = params[:taiguo][:xingcheng]
        feiyongshuoming = params[:taiguo][:feiyongshuoming]
        wenxintishi = params[:taiguo][:wenxintishi]
        yudingtishi = params[:taiguo][:yudingtishi]
        imagename = avatar.original_filename
        avatar.original_filename = Time.now.strftime("%Y%m%d%h%m%s")<<rand(99999).to_s<<imagename[imagename.length-4, 4]
        if !avatar.blank? && !avatar1.blank? && !title.blank? && !description.blank? && !price.blank? && !xingcheng.blank? && !feiyongshuoming.blank? && !wenxintishi.blank? && !yudingtishi.blank?
          rc = Taiguo.create(
              :avatar => avatar,
              :avatar1 => avatar1,
              :title => title,
              :description => description,
              :price => price,
              :xingcheng => xingcheng,
              :feiyongshuoming => feiyongshuoming,
              :wenxintishi => wenxintishi,
              :yudingtishi => yudingtishi
          )
          if rc.valid?
          else
            flash[:note]="创建成功！"
            redirect_to :back and return
          end
          redirect_to admin_taiguos_path and return
        else
          flash[:note]="添加失败，请检查添加项是否有空值！"
          redirect_to :back
        end
      end
    end
  end

  def show
    @hotline = Taiguo.find params[:id]
  end

  # delete
  def destroy
    @resource = Taiguo.find(params[:id])
    @resource.destroy
    respond_to do |r|
      r.html do
        redirect_to admin_taiguos_path
        return
      end
    end
  end
end
