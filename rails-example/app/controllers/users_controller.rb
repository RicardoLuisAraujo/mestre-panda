class UsersController < ApplicationController
    before_action :require_same_user, only: [:show, :edit, :update, :destroy]

    def show
        # find user id
        @user = User.find(params[:id])

        # paginate user_answers of the Historic table
        @user_answers_ordered = @user.user_answers.order(updated_at: :desc)
        @user_answers= @user_answers_ordered.page(params[:page]).per(10)

        # create user_answers dict with dates of when he did the exercises and their scores
        @user_answer_dates = @user.user_answers.map{|user_answer| user_answer.created_at.to_date}
        @user_answer_scores = @user.user_answers.map{|user_answer| user_answer.answer}.map{|answer| answer.true_answer}
        @user_answer_scores = @user_answer_scores.map{|score| score ? 1:0}
        @user_answer_scores_dict = Hash[@user_answer_dates.zip(@user_answer_scores)]
    end

    def require_same_user
        # raise
        if current_user.id.to_s != params[:id]
          redirect_to root_path, alert: "Access Denied!"
        end  
    end
      
end
