require 'test_helper'

class ActualAnswersControllerTest < ActionController::TestCase
  setup do
    @actual_answer = actual_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actual_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actual_answer" do
    assert_difference('ActualAnswer.count') do
      post :create, actual_answer: { answer_text: @actual_answer.answer_text, assessment_id: @actual_answer.assessment_id, next_question_id: @actual_answer.next_question_id, possible_answer_id: @actual_answer.possible_answer_id, question_id: @actual_answer.question_id }
    end

    assert_redirected_to actual_answer_path(assigns(:actual_answer))
  end

  test "should show actual_answer" do
    get :show, id: @actual_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actual_answer
    assert_response :success
  end

  test "should update actual_answer" do
    patch :update, id: @actual_answer, actual_answer: { answer_text: @actual_answer.answer_text, assessment_id: @actual_answer.assessment_id, next_question_id: @actual_answer.next_question_id, possible_answer_id: @actual_answer.possible_answer_id, question_id: @actual_answer.question_id }
    assert_redirected_to actual_answer_path(assigns(:actual_answer))
  end

  test "should destroy actual_answer" do
    assert_difference('ActualAnswer.count', -1) do
      delete :destroy, id: @actual_answer
    end

    assert_redirected_to actual_answers_path
  end
end
