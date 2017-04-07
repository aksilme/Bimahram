class AddOtherAlbulToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :album2, :string
    add_column :users, :album3, :string
    add_column :users, :album4, :string
    add_column :users, :album5, :string
  end
end
