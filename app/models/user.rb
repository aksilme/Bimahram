class User < ApplicationRecord

has_many :friendships
has_many :inverse_friendships, class_name: 'Friendship', foreign_key: 'friend_id'

mount_uploader :image, ImageUploader


   # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

   #friendships method
  validates_presence_of :email
  validates_presence_of :username
  validates_presence_of :birthday
  validates_numericality_of :birthday
  validates_presence_of :city
  def request_friendship(user2)
    self.friendships.create(friend: user2)
  end


end
