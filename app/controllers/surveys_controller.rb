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
      render :new #// better way to show errors
    end
  end

  def show
   @survey = Survey.find(params[:id])
   @first_question = @survey.questions.first
  end

  private
    def survey_params
      params.require(:survey).permit(:name)
    end
end
