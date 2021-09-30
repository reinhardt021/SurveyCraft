class SurveysController < ApplicationController
  def new
    @survey = Survey.new()
    puts 'in the SurveysController@new'
  end

  def create
    @survey = Survey.new(params[:client])
    puts @survey.name

  end
end
