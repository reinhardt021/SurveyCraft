class Question < ApplicationRecord
  validates :question, presence: true
  belongs_to :survey
end

