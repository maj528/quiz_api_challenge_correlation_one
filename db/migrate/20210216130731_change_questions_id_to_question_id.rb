class ChangeQuestionsIdToQuestionId < ActiveRecord::Migration[6.1]
  def change
    rename_column :submissions, :questions_id, :question_id
  end
end
