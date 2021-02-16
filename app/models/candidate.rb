class Candidate < ApplicationRecord
    has_many :submissions
    has_many :sessions
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
