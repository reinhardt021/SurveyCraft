class SubmissionsController < ApplicationController
  def new 
    @survey = Survey.find(params[:survey_id])
    #@submission = @survey.submissions.build
  end
  def create
    # TODO: Test Driven Design  = WRITE TESTS
    #
    # TODO: error out if there aren't any session_id
    puts '>>> SubmissionsController'
    puts params
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build(answer_params)
    #if @answer.save
      # TODO: redirect to the next question
      #redirect_to new_survey_question_path(@survey)
    #end
  end
end
