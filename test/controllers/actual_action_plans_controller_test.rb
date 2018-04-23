require 'test_helper'

class ActualActionPlansControllerTest < ActionController::TestCase
  setup do
    @actual_action_plan = actual_action_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actual_action_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actual_action_plan" do
    assert_difference('ActualActionPlan.count') do
      post :create, actual_action_plan: { assessment_id: @actual_action_plan.assessment_id, possible_action_plan_id: @actual_action_plan.possible_action_plan_id }
    end

    assert_redirected_to actual_action_plan_path(assigns(:actual_action_plan))
  end

  test "should show actual_action_plan" do
    get :show, id: @actual_action_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actual_action_plan
    assert_response :success
  end

  test "should update actual_action_plan" do
    patch :update, id: @actual_action_plan, actual_action_plan: { assessment_id: @actual_action_plan.assessment_id, possible_action_plan_id: @actual_action_plan.possible_action_plan_id }
    assert_redirected_to actual_action_plan_path(assigns(:actual_action_plan))
  end

  test "should destroy actual_action_plan" do
    assert_difference('ActualActionPlan.count', -1) do
      delete :destroy, id: @actual_action_plan
    end

    assert_redirected_to actual_action_plans_path
  end
end
