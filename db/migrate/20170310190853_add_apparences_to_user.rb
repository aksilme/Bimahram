class AddApparencesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :coleuryeux, :string
    add_column :users, :typecheveux, :string
    add_column :users, :longcheveux, :string
    add_column :users, :colcheveu, :string

  end
end
