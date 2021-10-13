class Question < ApplicationRecord
  validates :question, presence: true
  belongs_to :survey
  has_many :answers, dependent: :destroy
end

