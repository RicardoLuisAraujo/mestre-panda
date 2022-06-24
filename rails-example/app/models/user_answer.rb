class UserAnswer < ApplicationRecord
    belongs_to :exercise
    belongs_to :answer
    belongs_to :user
end
