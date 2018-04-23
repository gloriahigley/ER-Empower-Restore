require 'test_helper'

class PossibleAnswersControllerTest < ActionController::TestCase
  setup do
    @possible_answer = possible_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:possible_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create possible_answer" do
    assert_difference('PossibleAnswer.count') do
      post :create, possible_answer: { answer_text: @possible_answer.answer_text, boolean: @possible_answer.boolean, is_text: @possible_answer.is_text, order: @possible_answer.order, question_id: @possible_answer.question_id }
    end

    assert_redirected_to possible_answer_path(assigns(:possible_answer))
  end

  test "should show possible_answer" do
    get :show, id: @possible_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @possible_answer
    assert_response :success
  end

  test "should update possible_answer" do
    patch :update, id: @possible_answer, possible_answer: { answer_text: @possible_answer.answer_text, boolean: @possible_answer.boolean, is_text: @possible_answer.is_text, order: @possible_answer.order, question_id: @possible_answer.question_id }
    assert_redirected_to possible_answer_path(assigns(:possible_answer))
  end

  test "should destroy possible_answer" do
    assert_difference('PossibleAnswer.count', -1) do
      delete :destroy, id: @possible_answer
    end

    assert_redirected_to possible_answers_path
  end
end
