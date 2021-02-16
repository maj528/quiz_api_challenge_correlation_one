class Submission < ApplicationRecord
  belongs_to :candidate
  has_many :questions
  validates :answer, presence: true
end
