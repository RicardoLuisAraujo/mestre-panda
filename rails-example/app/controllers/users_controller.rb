class UsersController < ApplicationController
    before_action :require_same_user, only: [:show, :edit, :update, :destroy]


    def show
        @user = User.find(params[:id])

        @user_answer_dates = @user.user_answers.map{|user_answer| user_answer.created_at.to_date}

        @user_answer_scores = @user.user_answers.map{|user_answer| user_answer.answer}.map{|answer| answer.true_answer}
        @user_answer_scores = @user_answer_scores.map{|score| score ? 1:0}
        raise
        @user_answer_scores_dict = Hash[@user_answer_dates.zip(@user_answer_scores)]
        
    end

    def require_same_user
        # raise
        if current_user.id.to_s != params[:id]
          redirect_to root_path, alert: "Access Denied!"
        end  
    end
      
end
