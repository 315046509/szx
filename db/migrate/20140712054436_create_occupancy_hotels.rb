class CreateOccupancyHotels < ActiveRecord::Migration
  def change
    create_table :occupancy_hotels do |t|
      t.string :name  # 名称
      t.string :address  # 酒店地址
      t.integer :price  # 价格
      t.attachment :avatar # 图片
      t.string :fangxing  # 房型
      t.string :bed_type  # 床型
      t.string :breakfast # 早餐
      t.string :average # 日均价
      t.string :ruzhuxuzhi  # 入住须知
      t.string :fufeishuoming # 付费说明
      t.string :mianfeifuwu # 免费服务
      t.integer :hotel_id # 关联ID

      t.timestamps
    end
  end
end
