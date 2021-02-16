class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.references :answer_options, null: false, foreign_key: true
      t.string :correct_answer
      t.string :question_description

      t.timestamps
    end
  end
end
