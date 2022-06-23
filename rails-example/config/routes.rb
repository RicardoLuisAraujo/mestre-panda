Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "exercises#index"

  resources :exercises do
    resources :answers 
    resources :user_answers #, only: [ :new, :create ]
    
    
    
    collection do
      get :category_filter
      get :exercise_user_answer_form
    end

    # resources :answers, only: [ :index, :show ]
    # resources :user_answers #, only: [ :new, :create ]
  end
end


# exercises 
#   question_content
#   Answers (many)
#       answer_content
#       true_answer? bool
#     exercise_id
#   User_answers (many)
#     answer_id
#     exercise_id


# User_answers
#   answer_id
#   exercise_id

# Answers
#   exercise_id
#   answer_content
#   true_answer? bool