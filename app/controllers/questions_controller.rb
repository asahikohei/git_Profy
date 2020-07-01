class QuestionsController < ApplicationController
  def create
    Question.create(question_params)
    redirect_to :root and return
  end
  
  private
  def question_params
    params.require(:question).permit(:text).merge(user_id: current_user.id, group_id: current_user.group_id)
  end
  
end
