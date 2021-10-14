require 'rails_helper' 

describe SurveysController, type: :controller do
  describe '#new' do
    context 'with valid attributes' do
      # ARRANGE
      let (:survey_params) {
        FactoryBot.attributes_for(:survey)
      }

      it 'responds successfully' do 
        post :new, params: { survey: survey_params }
        aggregate_failures do
          expect(response).to be_successful
          expect(response).to have_http_status "200"
        end
      end

    end

  end

end
