require "application_system_test_case"

class UserAnswersTest < ApplicationSystemTestCase
  setup do
    @user_answer = user_answers(:one)
  end

  test "visiting the index" do
    visit user_answers_url
    assert_selector "h1", text: "User answers"
  end

  test "should create user answer" do
    visit user_answers_url
    click_on "New user answer"

    click_on "Create User answer"

    assert_text "User answer was successfully created"
    click_on "Back"
  end

  test "should update User answer" do
    visit user_answer_url(@user_answer)
    click_on "Edit this user answer", match: :first

    click_on "Update User answer"

    assert_text "User answer was successfully updated"
    click_on "Back"
  end

  test "should destroy User answer" do
    visit user_answer_url(@user_answer)
    click_on "Destroy this user answer", match: :first

    assert_text "User answer was successfully destroyed"
  end
end
