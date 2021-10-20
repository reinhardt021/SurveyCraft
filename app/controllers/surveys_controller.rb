require 'securerandom'

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
    else
      #redirect_to action: "new"
      #redirect_to new_survey_question_path(@survey)
      render :new #// better way to show errors
    end
  end

  def show
   @survey = Survey.find(params[:id])
   @first_question = @survey.questions.first
   # TODO: move uuid here to craete session_id
    @session_id = SecureRandom.uuid
   # link to start survey
   # GET /surveys/{survey}/questions/{question}/answers/new?session_id=adsflkjadsfldjsfkd
  end

  private
    def survey_params
      params.require(:survey).permit(:name)
    end
end
