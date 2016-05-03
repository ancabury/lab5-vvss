class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :statement
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :correct_answer
      t.string :domain

      t.timestamps null: false
    end
  end
end
