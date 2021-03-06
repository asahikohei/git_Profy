class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @questions = @user.answered_questions.uniq
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.id == current_user.id
      @user.update(user_params)
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :sex, :birth_day, :hobby, :image)
  end
end
