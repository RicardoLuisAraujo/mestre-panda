class UsersController < ApplicationController
    before_action :require_same_user, only: [:show, :edit, :update, :destroy]


    def show
        @user = User.find(params[:id])
    end

    def require_same_user
        # raise
        if current_user.id.to_s != params[:id]
          redirect_to root_path, alert: "Access Denied!"
        end  
    end
      
end
