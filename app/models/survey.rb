class Survey < ApplicationRecord
  #include ActiveModel::Validations

  validates :name, presence: true

end
