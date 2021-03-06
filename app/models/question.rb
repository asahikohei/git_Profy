class Question < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :answers
  
  
  validates_presence_of :text, :user_id, :group_id
  
  def user_answer(user_id)
    Answer.find_by(question_id: id, user_id: user_id)
  end
  
end
