class ChangeMahramInUser < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :mahram, :integer, limit: 8
  end
end
