class RemoveStuffFromQuestions < ActiveRecord::Migration[6.1]
  def change
    remove_column :questions, :answer_options_id
    # remove_foreign_key :submissions, column: :questions

    add_column :answer_options, :question_id, :integer
    #add_foreign_key :questions, :submission_id
  end
end
