#encoding:UTF-8
class Member < ActiveRecord::Base
  scope :order_ct_desc, lambda { order("created_at DESC") }

  validates :mobile, :presence => {:message => "手机号不能为空"},
            :uniqueness => {:message => "手机号以存在！"}
  validates_format_of :mobile, :multiline => true, :message => "手机号码不正确!", :with => /^(13[0-9]|15[0-9]|18[0-9])\d{8}$/
  validates :passwd, :presence => {:message => "密码不能为空"},
            :length => {:minimum => 6, :maximum => 254, :message => "密码至少6个字符"}

  # 密码加密
  def self.encrypt_password(passwd)
    Digest::MD5.hexdigest(passwd)
  end

  # 验证用户登录参数
  def self.valid_use_login_params(mobile, passwd)
    if (mobile.blank? || passwd.blank?)
    else
      return true
    end
  end

  # 验证登录
  def self.login_check(mobile, passwd)
    encrypt_password = Member.encrypt_password(passwd)
    return Member.where(:mobile => mobile, :passwd => encrypt_password).first
  end

  # 检查登录名是否存在
  def self.check_login_exist(mobile)
    accounts = Member.where(:mobile => mobile)
    accounts.blank? ? false : true
  end
end