FactoryBot.define do
  factory :survey do 
    name { Faker::Book.title }
  end
end
