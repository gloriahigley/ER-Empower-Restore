require 'test_helper'

class PossibleActionPlansControllerTest < ActionController::TestCase
  setup do
    @possible_action_plan = possible_action_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:possible_action_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create possible_action_plan" do
    assert_difference('PossibleActionPlan.count') do
      post :create, possible_action_plan: { order: @possible_action_plan.order, plan_text: @possible_action_plan.plan_text, possible_answer_id: @possible_action_plan.possible_answer_id, question_id: @possible_action_plan.question_id }
    end

    assert_redirected_to possible_action_plan_path(assigns(:possible_action_plan))
  end

  test "should show possible_action_plan" do
    get :show, id: @possible_action_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @possible_action_plan
    assert_response :success
  end

  test "should update possible_action_plan" do
    patch :update, id: @possible_action_plan, possible_action_plan: { order: @possible_action_plan.order, plan_text: @possible_action_plan.plan_text, possible_answer_id: @possible_action_plan.possible_answer_id, question_id: @possible_action_plan.question_id }
    assert_redirected_to possible_action_plan_path(assigns(:possible_action_plan))
  end

  test "should destroy possible_action_plan" do
    assert_difference('PossibleActionPlan.count', -1) do
      delete :destroy, id: @possible_action_plan
    end

    assert_redirected_to possible_action_plans_path
  end
end
