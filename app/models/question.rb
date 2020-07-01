class Question < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :answers
  
  
  validates_presence_of :text, :user_id, :group_id
  
end
