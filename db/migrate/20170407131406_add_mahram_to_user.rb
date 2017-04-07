class AddMahramToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :mahram, :integer
  end
end
