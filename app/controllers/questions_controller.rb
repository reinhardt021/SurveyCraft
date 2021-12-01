class QuestionsController < ApplicationController
  before_action :get_survey

  def new
    @questions = @survey.questions
    @question = @survey.questions.build
  end

  def create
    @question = @survey.questions.build(question_params)
    if @question.save
      redirect_to new_survey_question_path(@survey)
    else
      render :new 
    end
  end

  private
    def get_survey
      @survey = Survey.find(params[:survey_id])
    end
    
    def question_params
      params.require(:question).permit(:question, :survey_id)
    end
end
