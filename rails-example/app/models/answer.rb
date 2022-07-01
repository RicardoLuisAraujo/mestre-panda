class Answer < ApplicationRecord
  belongs_to :exercise
  has_many :user_answers, dependent: :destroy
end
