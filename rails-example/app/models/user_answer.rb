class UserAnswer < ApplicationRecord
    belongs_to :exercise
    belongs_to :answer
    belongs_to :user

    after_create_commit {
        broadcast_replace(partial: "user_answers/solution", locals: { user_answer: self })
    }
end
