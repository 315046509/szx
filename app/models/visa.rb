class Visa < ActiveRecord::Base
  scope :order_ct_desc, lambda { order("created_at DESC") }
  validates :title, :presence => {:message => "名称不能为空"}

  QUESTION_CATEGORYS = [["未分类", 0], ["亚洲签证", 1], ["欧洲签证", 2], ["非洲签证", 3], ["欧洲签证", 4], ["美洲签证", 5]]

  has_many :occupancy_hotels

  def Visa.question_category_name(category_id)
    QUESTION_CATEGORYS.each do |item|
      return item[0] if item[1] == category_id
    end
  end

  def question_category_name
    Visa.question_category_name(self.question_category_id)
  end
end
