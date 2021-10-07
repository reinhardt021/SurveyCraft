class QuestionsController < ApplicationController
  before_action :get_survey

  def new
    @questions = @survey.questions
    @question = @survey.questions.build
  end

  def create
    # TODO: add logic here to store the question in the Survey and reload the new page
  end

  private
    def get_survey
      @survey = Survey.find(params[:survey_id])
    end
end
