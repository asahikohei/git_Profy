class TopsController < ApplicationController
  def index
    @question = Question.new
  end
end
