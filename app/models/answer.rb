class Answer < ApplicationRecord
  validates :answer, presence: true
  belongs_to :submission
  belongs_to :question
end


