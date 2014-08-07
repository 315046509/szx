class Admin::OccupancyHotelsController < Admin::MainController
  before_action :set_get_resource, :only => [:destroy]
  layout 'admin'

  def index
    @hotels = OccupancyHotel.where(:hotel_id => params[:hotel_id]).order("id desc").page(params[:page]).per(10)
  end

  def new
    @hotel = OccupancyHotel.new
    @parent_id = params[:hotel_id]
  end

  def create
    @hotel = OccupancyHotel.new(
        :name => params[:occupancy_hotel][:name],
        :address => params[:occupancy_hotel][:address],
        :price => params[:occupancy_hotel][:price],
        :avatar => params[:occupancy_hotel][:avatar],
        :fangxing => params[:occupancy_hotel][:fangxing],
        :bed_type => params[:occupancy_hotel][:bed_type],
        :breakfast => params[:occupancy_hotel][:breakfast],
        :average => params[:occupancy_hotel][:average],
        :ruzhuxuzhi => params[:occupancy_hotel][:ruzhuxuzhi],
        :fufeishuoming => params[:occupancy_hotel][:fufeishuoming],
        :mianfeifuwu => params[:occupancy_hotel][:mianfeifuwu],
        :hotel_id => params[:hotel_id]
    )
    if @hotel.save
      flash[:note] = "创建成功"
      redirect_to admin_hotel_occupancy_hotels_path(params[:hotel_id]) and return
    else
      flash[:note] = @journalism.errors.values.join(";    ")
      redirect_to :back and return
    end
  end

  def edit
    @hotel = OccupancyHotel.find(params[:id])
  end

  def update
    @category = OccupancyHotel.find(params[:id])
    update_category = @category.update_attributes(
        :name => params[:occupancy_hotel][:name],
        :address => params[:occupancy_hotel][:address],
        :price => params[:occupancy_hotel][:price],
        :avatar => params[:occupancy_hotel][:avatar],
        :fangxing => params[:occupancy_hotel][:fangxing],
        :bed_type => params[:occupancy_hotel][:bed_type],
        :breakfast => params[:occupancy_hotel][:breakfast],
        :average => params[:occupancy_hotel][:average],
        :ruzhuxuzhi => params[:occupancy_hotel][:ruzhuxuzhi],
        :fufeishuoming => params[:occupancy_hotel][:fufeishuoming],
        :mianfeifuwu => params[:occupancy_hotel][:mianfeifuwu],
        :hotel_id => params[:hotel_id]
    )
    if update_category
      respond_to do |category|
        category.html {
          redirect_to admin_hotel_occupancy_hotels_path(params[:hotel_id]) and return
        }
      end
    end
  end

  def show
    @hotel = OccupancyHotel.find params[:id]
  end

  #   删除
  def destroy
    @resource = OccupancyHotel.find(params[:id])
    @resource.destroy
    respond_to do |r|
      r.html do
        redirect_to admin_hotel_occupancy_hotels_path(@resource.hotel_id)
        return
      end
    end
  end

  private
  def set_get_resource
    @resource = OccupancyHotel.find(params[:id])
  end
end
