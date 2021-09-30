class WelcomeController < ApplicationController
  def create
    @survey = Survey.new()
  end
end
