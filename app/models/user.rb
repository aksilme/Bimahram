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
  def pending_friend_requests_from
    self.inverse_friendships.where(state: 'pending')
  end
  def pending_friend_requests_to
    self.friendships.where(state: 'pending')
  end

  def active_friends
    self.friendships.where(state: 'active').map(&:friend) + self.inverse_friendships.where(state: 'active').map(&:user)
  end

def friendship_status(user_2)
  friendship = Friendship.where(user_id: [self.id,user_2.id], friend_id: [self.id,user_2.id])
  unless friendship.any?
    return "not_friends"
  else
    if friendship.first.state == "active"
      return "friends"
    else
      if friendship.first.user == self
        return "pending"
      else
        return "requested"
      end
    end
  end
end

end
