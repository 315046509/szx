class Customized < ActiveRecord::Base
  scope :order_ct_desc, lambda { order("created_at DESC") }
  validates :company_name, :presence => {:message => "公司名称不能为空"}
  validates :name, :presence => {:message => "联系人不能为空"}
  validates :tell, :presence => {:message => "电话不能为空"}
  validates :caltel, :presence => {:message => "包团电话不能为空"}
end
