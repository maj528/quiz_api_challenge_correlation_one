class Question < ApplicationRecord
  has_many :answer_options
  belongs_to :submission
  enum question_type: [:radio, :multiselect, :integer, :string]
  validates :question_type, presence: true
  validates :correct_answer, presence: true
  validates :question_description, presence: true

end
