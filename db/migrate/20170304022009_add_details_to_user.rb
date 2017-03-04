class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :birthday, :date
    add_column :users, :city, :string
    add_column :users, :genre, :string
    add_column :users, :taille, :integer
    add_column :users, :poids, :integer
    add_column :users, :situation, :text
    add_column :users, :annonce, :text
  end
end
