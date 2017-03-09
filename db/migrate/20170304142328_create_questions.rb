class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :q1
      t.string :q2
      t.string :q3
      t.string :q4
      t.string :q5
      t.string :q6
      t.string :q7
      t.string :q8
      t.string :q9
      t.string :q10
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
