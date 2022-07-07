class ExercisesController < ApplicationController
    # skip_before_action: authenticate_user!, only: :index
    before_action :set_exercise, only: [:show, :edit, :update, :destroy]

    def index
      @exercises = Exercise.all

      @categories = @exercises.map { |exercise| exercise['category'] }.uniq
    end

    def show
      # @user_answer = UserAnswer.new(exercise_id: @exercise.id)
      # redirect_to new_exercise_user_answer_path(@exercise)
      
    end
    
    def new
        @exercise = Exercise.new # needed to instantiate the form_for
    end

    def create
        @exercise = Exercise.new(exercise_params)
        @exercise.save

        # no need for app/views/exercises/create.html.erb
        redirect_to exercise_path(@exercise)
      end

    def edit
      # @user_answer = UserAnswer.new  
    end
    
    def update
      # @exercise.update(exercise_params)
      # @user_answer = UserAnswer.new(exercise_id: @exercise.id, answer_id: @answer.id)
      # raise
      redirect_to exercise_path(@exercise)

    end
    
    def destroy

        @exercise.destroy
    
        # no need for app/views/exercises/destroy.html.erb
        redirect_to exercises_path()
      end
    
    def category_filter

      @exercises = Exercise.where(category: params[:category])
      
    end

    def exercise_user_answer_form
      @exercise = Exercise.find(params[:exercise_id])
      @user_answer = UserAnswer.new(exercise_id: @exercise.id)

    end

    private

    def set_exercise
        @exercise = Exercise.find(params[:id])
      end
    

    def exercise_params
        params.require(:exercise).permit(:id, :answers, :answer_id, :category, :number, :statement, :user_answers)
    end
    
  end
  