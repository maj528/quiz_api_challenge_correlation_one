class CreateSubmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :submissions do |t|
      t.references :candidates, null: false, foreign_key: true
      t.references :questions, null: false, foreign_key: true
      t.string :answer

      t.timestamps
    end
  end
end
