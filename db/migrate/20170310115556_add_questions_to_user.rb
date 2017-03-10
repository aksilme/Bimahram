class AddQuestionsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :q1, :string
    add_column :users, :q2, :string
    add_column :users, :q3, :string
    add_column :users, :q4, :string
    add_column :users, :q5, :string
    add_column :users, :q6, :string
    add_column :users, :q7, :string
    add_column :users, :q8, :string
    add_column :users, :q9, :string
    add_column :users, :q10, :string


  end
end
