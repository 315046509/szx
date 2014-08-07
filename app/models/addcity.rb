class Addcity < ActiveRecord::Base
  scope :order_ct_desc, lambda { order("created_at DESC") }
  validates :title, :presence => {:message => "标题不能为空"}

  QUESTION_CATEGORYS = [["未分类", 0], ["香港游", 100], ["澳门游", 101], ["港澳游", 102], ["非洲", 103],
                        ["热门出境", 1], ["热门海岛", 2], ["东南亚", 3], ["亚洲", 4], ["欧洲", 5], ["美洲", 6], ["中东非洲", 7], ["澳洲", 8],
                        ["热门国内", 9], ["华南", 10], ["西南", 11], ["华东", 12], ["华中", 13], ["华北", 14], ["西部", 15], ["东北", 16], ["长春", 17]]
  has_many :traves

  def Addcity.question_category_name(category_id)
    QUESTION_CATEGORYS.each do |item|
      return item[0] if item[1] == category_id
    end
  end

  def question_category_name
    Addcity.question_category_name(self.question_category_id)
  end
end
