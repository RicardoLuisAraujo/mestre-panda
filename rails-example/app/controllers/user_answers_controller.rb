class UserAnswersController < ApplicationController
    before_action :user_answer_params

    def new
        # we need @restaurant in our `simple_form_for`
        @exercise = Exercise.find(params[:exercise_id])
        @answers = Exercise.find(params[:exercise_id]).answers
        @user_answer = UserAnswer.new(exercise_id: @exercise.id)
        # @user_answer.answers = @answers
      end
    

    def create
        @user_answer = UserAnswer.new(user_answer_params)
        # we need `restaurant_id` to associate user_answer with corresponding exercise
        @exercise = Exercise.find(params[:exercise_id])
        @user_answer.exercise = @exercise
        @user_answer.answer = @exercise.answers.find(params[:user_answer][:answer])
        @user_answer.save
        redirect_to exercise_user_answers_path(@exercise)
        # raise
    end

    private

    def user_answer_params
        params.permit(:exercise_id, :answer_id, :user_answer)
    end

end

