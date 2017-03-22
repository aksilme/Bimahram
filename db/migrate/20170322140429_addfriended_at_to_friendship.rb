class AddfriendedAtToFriendship < ActiveRecord::Migration[5.0]
  def change
    add_column :friendships, :friended_at, :datetime
  end
end
