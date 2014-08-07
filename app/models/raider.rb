class Raider < ActiveRecord::Base
  validates :title, :presence => {:message => "名称不能为空！"}
  validates :description, :presence => {:message => "内容不能为空！"}
  scope :order_ct_desc, lambda { order("created_at DESC") }
  belongs_to :one_city
end
