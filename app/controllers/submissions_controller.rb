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
    @survey = Survey.find(params[:survey_id])
    @submission = @survey.submissions.build(submission_params)
    if @submission.save
      redirect_to survey_submission_path(@survey, @submission)
    else 
      puts '>>> submission did not save'
      #why is this just pushing me to http://localhost:3000/surveys/11/submissions
      render :new
    end
  end

  def show
    @survey = Survey.find(params[:survey_id])
    @submission = Submission.find(params[:id])
  end

  private
    def submission_params
      params.require(:submission).permit(:survey_id, answers_attributes: [:question_id, :answer])
    end
end
