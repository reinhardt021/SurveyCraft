class QuestionsController < ApplicationController
  before_action :get_survey

  def new
    @questions = @survey.questions
    @question = @survey.questions.build
  end

  def create
    @question = @survey.questions.build(question_params)
    if @question.save
      @question = @survey.questions.build
      redirect_to action: "new"
    else 
      # // TODO: use render and errors of model instead of flash
      redirect_to action: "new"
      flash[:error] = "Question could not save"
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
