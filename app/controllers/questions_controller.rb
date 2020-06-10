class QuestionsController < ApplicationController

  def ask

  end

  def answer
    # TODO: return coach answer to your_message!
    message = params[:question]
    @answer = coach_answer_enhanced(message)
  end
end

def coach_answer_enhanced(message)
  answer = ''
  answer += 'I can feel your motivation! ' if message.upcase == message
  if message.end_with?("?")
    answer += 'Silly question, get dressed and go to work!'
  elsif message.upcase != 'I am going to work right now!'.upcase
    answer += "I don't care, get dressed and go to work!"
  else
    answer = 'Great!'
  end
  answer
end
