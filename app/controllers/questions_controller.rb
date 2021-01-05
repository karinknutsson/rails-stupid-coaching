class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question].downcase
    @answer = ''

    if @question == 'hello'
      @answer = 'How do you do?'
    elsif @question == 'what time is it?'
      @answer = "The time is #{Time.now}."
    elsif @question == 'i am going to work'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
