class ChangeBirhdayInUser < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :birthday, :float
  end
end
