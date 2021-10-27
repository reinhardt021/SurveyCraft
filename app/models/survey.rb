class Survey < ApplicationRecord
  validates :name, presence: true
  has_many :submissions, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_many :answers, through: :questions
  accepts_nested_attributes_for :questions
end
