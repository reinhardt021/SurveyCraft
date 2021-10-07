class SurveysController < ApplicationController
  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to @survey
    end
  end

  def show
    @survey = Survey.find(params[:id])
    # // TODO
  end

  private
    def survey_params
      params.require(:survey).permit(:name)
    end
end
