class ChangeFriendships < ActiveRecord::Migration[5.0]
  def change
    change_column :friendships, :state, :string, default: 'pending'
  end
end
