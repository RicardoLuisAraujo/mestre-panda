class Exercise < ApplicationRecord
    has_many :answers, dependent: :destroy
    has_many :user_answers, dependent: :destroy


    accepts_nested_attributes_for :answers, :user_answers
end
