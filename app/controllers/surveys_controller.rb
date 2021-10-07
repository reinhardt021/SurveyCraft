class SurveysController < ApplicationController
  def new
    @survey = Survey.new
  end

  def create
    Survey.create(survey_params)
  end

  private
    def survey_params
      params.require(:survey).permit(:name)
    end
end
