class AnswersController < ApplicationController
  before_action :redirect, only: :new
  
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @answer.question_id = @question.id
  end
  
  def create
    Answer.create(answer_params)
    redirect_to :root and return
  end
  
  private
  def answer_params
    params.require(:answer).permit(:text, :question_id).merge(user_id: current_user.id)
  end
  
  def redirect
    if Answer.exists?(question_id: params[:question_id], user_id: current_user.id)
      redirect_to :root
    end
  end
end
