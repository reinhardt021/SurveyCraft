class AnswersController < ApplicationController
  def new 
    @survey = Survey.find(params[:survey_id])
    @question = Question.find(params[:question_id])
    # start a new answer for the question
    #check for session_id in query params
    #puts params[:session_id]
    @answer = @question.answers.build(session_id: params[:session_id])
    puts '>> the session id'
    puts params[:session_id]
    #@answer = Answer.new(session_id: params[:session_id])
  end

  def create
    # // POST surveys/{survey_id}/questions/{question}/answers
    #   {
    #     question_id: 76,
    #     answer: yes
    #   }
    #@survey = Survey.find(params[:survey_id])
    @question = Question.find(params[:question_id])
    #@answer = @question.answers.build(session_id: params[:session_id])
    puts '>> answers_controller@create session id'
    puts params[:session_id]
    @answer = @question.answers.build(answer_params)
    #@answer = Answer.new(question_id: params[:question_id], session_id: params[:session_id], answer: params[:answer])
    # TODO: change name to session ID
    #@answer.uuid = SecureRandom.uuid
    puts @survey
    puts @uuid
    puts params
    if @answer.save
      puts '>>>> CREATED ANSWER'
      #redirect_to new_survey_question_path(@survey)
    end
  end

  def answer_params
    params.require(:answer).permit(:question_id, :session_id, :answer)
  end
end
