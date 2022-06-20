require "test_helper"

class UserAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_answer = user_answers(:one)
  end

  test "should get index" do
    get user_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_user_answer_url
    assert_response :success
  end

  test "should create user_answer" do
    assert_difference("UserAnswer.count") do
      post user_answers_url, params: { user_answer: {  } }
    end

    assert_redirected_to user_answer_url(UserAnswer.last)
  end

  test "should show user_answer" do
    get user_answer_url(@user_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_answer_url(@user_answer)
    assert_response :success
  end

  test "should update user_answer" do
    patch user_answer_url(@user_answer), params: { user_answer: {  } }
    assert_redirected_to user_answer_url(@user_answer)
  end

  test "should destroy user_answer" do
    assert_difference("UserAnswer.count", -1) do
      delete user_answer_url(@user_answer)
    end

    assert_redirected_to user_answers_url
  end
end
