class ChangeCandidatesIdToCandidateId < ActiveRecord::Migration[6.1]
  def change
    rename_column :submissions, :candidates_id, :candidate_id
  end
end
