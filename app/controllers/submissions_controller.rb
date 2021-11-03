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
    puts ">>> Submission@survey_id=#{@submission.survey_id}"
    @submission.answers.each do |answer|
      puts ">>> answer.question_id=#{answer.question_id}"
      puts ">>> answer.question.question=#{answer.question.question}"
      puts ">>> answer.answer=#{answer.answer}"
    end
    if @submission.save
      puts '>>> Submission saved'
      puts '>>> check if answers saved'
      # TODO: redirect to suvery show page
    else 
      puts '>>> submission did not save'
      #why is this just pushing me to http://localhost:3000/surveys/11/submissions
      render :new
    end
  end
  private
    def submission_params
      params.require(:submission).permit(:survey_id, answers_attributes: [:question_id, :answer])
    end
end
