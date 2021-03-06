class User < ApplicationRecord

has_many :friendships
has_many :inverse_friendships, class_name: 'Friendship', foreign_key: 'friend_id'

mount_uploader :image, ImageUploader
mount_uploader :album, AlbumUploader
mount_uploader :album2, AlbumUploader
mount_uploader :album3, AlbumUploader
mount_uploader :album4, AlbumUploader
mount_uploader :album5, AlbumUploader

   # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  #verifier si l'utilisateur est enligne
    def online?
      if current_sign_in_at.present?
        last_sign_out_at.present? ? current_sign_in_at > last_sign_out_at : true
      else
        false
      end
    end

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

def friendship_relation(user_2)
  Friendship.where(user_id: [self.id,user_2.id], friend_id: [self.id,user_2.id]).first
end

end
