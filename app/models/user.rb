class User < ActiveRecord::Base
  # Include default user modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         # :confirmable #添加该项, 为注册后邮箱验证

  has_many :attachments
  has_many :pictures, through: :attachments
  has_many :documents, through: :attachments
  has_many :audios, through: :attachments

end
