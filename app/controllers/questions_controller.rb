class QuestionsController < ApplicationController
  def ask
    # This is the action for rendering the form where a user can ask a question
    # For now, there's no code needed here because the action just renders the view
  end
  def answer
    # This is where we handle the form submission and provide an answer

    question = params[:answer]

    # Checking if the question is not nil before processing
    if question
      if question.downcase == 'i am going to work'
        @answer = 'Great! Get to work!'
      elsif question.end_with?("?")
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    else
      @answer = 'Please ask a question.'
    end
  end
end
