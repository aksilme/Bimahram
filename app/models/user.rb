class User < ApplicationRecord

mount_uploader :image, ImageUploader


  def self.search(search)
    if search
      where(["username like ?", "%#{search}%"])

    else
      all
    end

  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  validates_presence_of :email
  validates_presence_of :username
  validates_presence_of :birthday
  validates_numericality_of :birthday
  validates_presence_of :city


end
