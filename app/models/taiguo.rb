class Taiguo < ActiveRecord::Base
  scope :order_ct_desc, lambda { order("created_at DESC") }

  validates :title, :presence => {:message => "名称不能为空！"}
  validates :description, :presence => {:message => "内容不能为空！"}
  validates :price, :presence => {:message => "价格不能为空！"}

  attr_accessor :avatar
  has_attached_file :avatar, :styles => {:index => "322x223#", :thumb => "68x48#", :show => "373x233#"}, :default_url => "/images/:style/missing.png",
                    :url => "/tejia/:id_partition/:style/:filename"
  validates_attachment_size :avatar, :less_than => 2.megabytes
  validates_attachment_content_type :avatar, :content_type => ['image/png', 'image/x-png', 'image/jpeg', 'image/pjpeg', 'image/jpg']

  attr_accessor :avatar1
  has_attached_file :avatar1, :styles => {:thumb => "68x48#", :show => "637x279#"}, :default_url => "/images/:style/missing.png",
                    :url => "/hangban/:id_partition/:style/:filename"
  validates_attachment_size :avatar1, :less_than => 2.megabytes
  validates_attachment_content_type :avatar1, :content_type => ['image/png', 'image/x-png', 'image/jpeg', 'image/pjpeg', 'image/jpg']

  scope :order_ct_desc, lambda { order("created_at DESC") }

  @filepath="public/"

  # 删除图片
  def self.deletefile(r_id)
    idstr = format("%09d", r_id.to_s)
    one_path = @filepath+idstr[0, 3]+"/"
    two_path = one_path + idstr[3, 3]+"/"
    three_path = two_path + idstr[6, 3]+"/"
    begin
      `rm -rf #{Rails.root+three_path}`
    rescue
      if system "rm -rf #{Rails.root+three_path}"
        return true
      else
        return false
      end
    end
    return true
  end
end
