class AnswersController < ApplicationController
  def new 
    @survey = Survey.find(params[:survey_id])
    @question = Question.find(params[:question_id])
    # TODO: check for session_id in query params
    @answer = @question.answers.build(session_id: params[:session_id])
  end

  def create
    # TODO: error out if there aren't any session_id
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build(answer_params)
    if @answer.save
      # TODO: redirect to the next question
      #redirect_to new_survey_question_path(@survey)
    end
  end

  def answer_params
    params.require(:answer).permit(:question_id, :session_id, :answer)
  end
end
