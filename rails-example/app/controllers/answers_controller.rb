class AnswersController < ApplicationController
    before_action :get_exercise

    def index
        # @exercise = Exercise.find(params[:exercise_id])

        #@answers = Answer.where(exercise: params[:exercise]
        @answers = @exercise.answers
    end


    private

    def get_exercise
        @exercise = Exercise.find(params[:id])
      end

    def answer_params
        params.require(:answer).permit(:answer, :true_answer)
    end
      
end
