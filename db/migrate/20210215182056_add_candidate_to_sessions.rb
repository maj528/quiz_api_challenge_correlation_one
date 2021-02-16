class AddCandidateToSessions < ActiveRecord::Migration[6.1]
  def change
    add_reference :sessions, :candidate, null: false, foreign_key: true
  end
end
