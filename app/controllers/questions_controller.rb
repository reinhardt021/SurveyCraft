class QuestionsController < ApplicationController
  before_action :get_survey

  def new
    @questions = @survey.questions
    @question = @survey.questions.build
  end

  def create
    puts '>>> TEST in QuestionsController@create'
    # TODO: add logic here to store the question in the Survey and reload the new page
    @question = Question.new(question_params)
    @survey.questions << @question
    puts '>>> SURVEY = ' + @survey.name
    puts '>>> new QUESTION = ' + @question.question
    puts '>>> new QUESTION survey = ' + @question.survey_id.to_s
    if @question.save
      puts '>>> QUESTION saved'
      @question = @survey.questions.build
      redirect_to action: "new"
    else 
      puts '>>> QUESTION ERROR'
      @question.errors.full_messages.each do |message|
        puts message
      end
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
