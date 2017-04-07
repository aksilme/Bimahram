class ChangeBirhdayToIntegerInUser < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :birthday, 'integer USING CAST(birthday AS integer)'
  end
end
