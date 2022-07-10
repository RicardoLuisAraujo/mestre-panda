class UserAnswersController < ApplicationController
    before_action :user_answer_params

    def new
        # we need @restaurant in our `simple_form_for`
        @exercise = Exercise.find(params[:exercise_id])
        @answers = Exercise.find(params[:exercise_id]).answers
        @user_answer = UserAnswer.new(exercise_id: @exercise.id)
      end
    

    def create
        @user_answer = UserAnswer.new(user_answer_params)
        # we need `restaurant_id` to associate user_answer with corresponding exercise
        @exercise = Exercise.find(params[:exercise_id])
        @user_answer.exercise = @exercise
        
        if @exercise.multiple_choice?
            @user_answer.answer = @exercise.answers.find(params[:user_answer][:answer])
        else
            @user_answer.answer = Answer.new(answer: params[:user_answer][:answer], exercise_number: @exercise.exercise_number, exercise_id: @exercise.id)
        end

        @user_answer.user_id = current_user.id
        @user_answer.save
        #render :partial => 'subject', :object => @subject

        
        @user_answer.save
        
        
        # respond_to do |format|
        #     format.html # index.html.erb
        #     format.json { render json: @user_answer }
        #   end          
    end

    private

    def user_answer_params
        params.permit(:exercise_id, :answer_id, :user_answer, :user_id)
    end

end

