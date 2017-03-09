class QuestionsController < ApplicationController
  def index

  end

  def show

  end
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(questions_params)
    @question.save
    redirect_to @question
  end


  private
  def questions_params
    params.require(:question).permit(:q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10)
  end


end