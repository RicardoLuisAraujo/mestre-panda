class UserAnswer < ApplicationRecord
    belongs_to :exercise
    belongs_to :answer
end
