class ThreeCity < ActiveRecord::Base
  scope :order_ct_desc, lambda { order("created_at DESC") }
  validates :title, :presence => {:message => "城市名称不能为空"}

  QUESTION_CATEGORYS = [["未分类", 0], ["港澳旅游", 1], ["出境旅游", 2], ["国内旅游", 3], ["长春旅游", 4]]

  has_many :tejias
  has_many :raiders
  has_many :gentuans

  def ThreeCity.question_category_name(category_id)
    QUESTION_CATEGORYS.each do |item|
      return item[0] if item[1] == category_id
    end
  end

  def question_category_name
    ThreeCity.question_category_name(self.question_category_id)
  end
end
