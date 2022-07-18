class TestsController < ApplicationController
  before_action :test_params
  
  def new
    # We need @restaurant in our `simple_form_for`
    @user_answers = current_user.user_answers
    @failed_answers = @user_answers.map {|user_answer| user_answer.exercise.answers.select {|answer| answer.true_answer == false && answer.id == user_answer.answer_id}}.flatten
    @failed_exercises = @failed_answers.map {|answer| answer.exercise}.uniq

    @user_answer = UserAnswer.new()
    @test = Test.new(user_answer: @user_answer)
  end

  def create
    @test = Test.new(test_params)
  end

  private    

    def test_params
        params.permit(:id, :test, :exercises, :exercise_id, :user_id, :answers)
    end
end
