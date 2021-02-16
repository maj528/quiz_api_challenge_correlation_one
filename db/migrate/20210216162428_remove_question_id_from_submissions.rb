class RemoveQuestionIdFromSubmissions < ActiveRecord::Migration[6.1]
  def change
    remove_column :submissions, :question_id
    # remove_foreign_key :submissions, column: :questions

    add_column :questions, :submission_id, :integer
    #add_foreign_key :questions, :submission_id
  end
end
