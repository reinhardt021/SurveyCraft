class SubmissionsController < ApplicationController
  def new 
    @submission = survey.submissions.build
    survey.questions.each do |question|
      @submission.answers.build(question_id: question.id)
    end
  end
  # TODO: Test Driven Design  = WRITE TESTS

  def create
    @submission = survey.submissions.build(submission_params)
    if @submission.save
      redirect_to survey_submission_path(survey, @submission)
    else 
      render :new
    end
  end

  def show
    survey
    @submission = Submission.find(params[:id])
  end

  private
    def survey 
      @survey ||= Survey.find(params[:survey_id])
    end

    def submission_params
      params.require(:submission).permit(:survey_id, answers_attributes: [:question_id, :answer])
    end
end
