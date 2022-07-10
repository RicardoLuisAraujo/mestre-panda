class Exercise < ApplicationRecord
    has_many :answers, dependent: :destroy
    has_many :user_answers, dependent: :destroy
    belongs_to :tests


    accepts_nested_attributes_for :answers, :user_answers
end

def next
    Exercise.first(:conditions => ['id > ?', self.id], :order => 'id ASC')
  end