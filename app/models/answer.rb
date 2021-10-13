class Answer < ApplicationRecord
  validates :answer, presence: true
  belongs_to :question
end


