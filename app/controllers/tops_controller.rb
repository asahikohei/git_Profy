class TopsController < ApplicationController
  def index
    @question = Question.new
    question = Question.all
    @questions = Question.where(text:"current_user.group_id == #{question}.group_id")
  end
end
