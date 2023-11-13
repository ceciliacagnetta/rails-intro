class QuestionsController < ApplicationController
    def ask
    end

    def answer
      @question = params[:question]
      # @answers = ['Great!', "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
      if @question == "I am going to work right now!"
        @answers = "Great!"
      elsif params[:question].end_with?('?')
        @answers = "Silly question, get dressed and go to work!"
      else
        @answers = "I don't care, get dressed and go to work!"
      end
    end
end
