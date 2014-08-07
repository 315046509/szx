class Announcement < ActiveRecord::Base
  scope :order_ct_desc, lambda { order("created_at DESC") }
  validates :title, :presence => {:message => "最新公告不能为空"}
end
