class CreateAnswerOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_options do |t|
      t.string :answer_description

      t.timestamps
    end
  end
end
