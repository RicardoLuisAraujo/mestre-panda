class UsersController < ApplicationController
    before_action :require_same_user, only: [:show, :edit, :update, :destroy]


    def show
        @user = User.find(params[:id])

        @user_answer_dates = [1, 2, 3]#@user.user_answers.map{|user_answer| user_answer.exercise}.map{|exercise| exercise.created_at}
        @user_answer_scores = @user.user_answers.map{|user_answer| user_answer.answer}.map{|answer| answer.true_answer}
    end

    def require_same_user
        # raise
        if current_user.id.to_s != params[:id]
          redirect_to root_path, alert: "Access Denied!"
        end  
    end
      
end
