class UserAnswersController < ApplicationController
    before_action :user_answer_params

    def new
        @exercise = Exercise.find(params[:exercise_id])
        @answers = Exercise.find(params[:exercise_id]).answers
        @user_answer = UserAnswer.new(exercise_id: @exercise.id)    
    end
    

    def create
        @user_answer = UserAnswer.new(user_answer_params)
        @answers = Exercise.find(params[:exercise_id]).answers
        @exercise = Exercise.find(params[:exercise_id])
        @user_answer.exercise = @exercise
        
        if @exercise.multiple_choice?
            @user_answer.answer = @exercise.answers.find(params[:answer])
        else
            @user_answer.answer = Answer.new(answer: params[:answer], exercise_id: @exercise.id)
        end

        @user_answer.user_id = current_user.id
        @user_answer.save
        
        respond_to do |format|
            format.html { redirect_to @exercise, notice: "Quote was successfully destroyed." }
            format.turbo_stream
        end         
    end

    private

    def user_answer_params
        params.permit(:exercise_id, :answer_id, :user_answer, :user_id)
    end

end

