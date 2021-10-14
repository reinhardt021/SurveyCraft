require 'rails_helper' 

describe Survey, type: :model do
  it 'is valid with a name' do
    # ARRANGE & ACT
    survey = Survey.new(
      name: 'TESTSURVEY',
    )
    # ASSERT
    expect(survey).to be_valid
  end

  it 'is invalid without a name' do
    # ARRANGE
    survey = Survey.new(
      name: nil,
    )
    # ACT
    # ASSERT
    survey.valid?
    expect(survey.errors[:name])
  end
end

