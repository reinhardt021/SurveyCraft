require 'securerandom'

class AnswersController < ApplicationController
  def create
    # // POST surveys/{survey_id}/answers
    # {
    #   76: {
    #     question_id: 76,
    #     answer: yes
    #   },
    #   77: {
    #     question_id: 76,
    #     answer: yes
    #   },
    # ]
    @survey = Survey.new(params[:id])
    # TODO: change name to session ID
    #@answer.uuid = SecureRandom.uuid
    @uuid = SecureRandom.uuid
    puts @survey
    puts @uuid
    puts params
    #if @survey.save
      #redirect_to new_survey_question_path(@survey)
    #end
  end

  def survey_params
    params.require(:survey).permit(:id, questions_attributes: [:id, answers_attributes: [:answer]])
  end
end
