Rails.application.routes.draw do
  get 'tests/new'
  devise_for :users
  resources :users, :only => [:show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "exercises#index"

  resources :tests do
    resources :exercises, only: [:index]
  end
  
  resources :exercises, only: [:show, :edit, :update, :destroy, :new, :create]  do
    resources :answers 
    resources :user_answers #, only: [ :new, :create ]
    
    
    collection do
      get :category_filter
      get :exercise_user_answer_form
    end

  end
end
