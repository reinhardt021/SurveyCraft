class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end
  
  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to new_survey_question_path(@survey)
    end
  end

  def show
    @survey = Survey.find(params[:id])
    # // TODO should grab the Survey that will be shown to a user to fill out the answers
  end

  private
    def survey_params
      params.require(:survey).permit(:name)
    end
end
