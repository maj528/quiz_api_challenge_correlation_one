class AnswerOption < ApplicationRecord
    belongs_to :question
    validates :answer_description, presence: true
end
