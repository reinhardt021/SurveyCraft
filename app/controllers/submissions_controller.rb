class SubmissionsController < ApplicationController
  def new 
    @survey = Survey.find(params[:survey_id])
    @submission = @survey.submissions.build
    @survey.questions.each do |question|
      @submission.answers.build(question_id: question.id)
    end
  end
  # TODO: Test Driven Design  = WRITE TESTS

  def create
    puts '>>> SubmissionsController'
    puts params
    #@survey = Survey.find(params[:survey_id])
    #@answer = @question.answers.build(answer_params)
    @submission = Submission.new(submission_params)
    puts '>>> Submission'
    puts @submission
    #if @answer.save
      # TODO: redirect to the next question
      #redirect_to new_survey_question_path(@survey)
    #end
  end
  private
    def submission_params
      params.require(:submission).permit(:survey_id, answer: [:question_id, :answer])
    end
end
