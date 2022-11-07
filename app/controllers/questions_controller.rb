class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @response = params[:answer]

    if @response == 'I am going to work'
      @coach = 'Great!'
    elsif @response.last == '?'
      @coach = 'Silly question, get dressed and go to work!'
    else
      @coach = "I don't care, get dressed and go to work!"
    end
  end
end
