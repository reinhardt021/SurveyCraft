class SurveysController < ApplicationController
  def new
    @survey = Survey.new
    puts '>>> in the SurveysController@new'
  end

  def create
    @survey = Survey.create(survey_params)
    puts '>>> new Survey Created with Name = ' + @survey.name
  end

  private
    def survey_params
      params.require(:survey).permit(:name)
    end
end
