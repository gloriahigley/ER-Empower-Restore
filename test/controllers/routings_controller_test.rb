require 'test_helper'

class RoutingsControllerTest < ActionController::TestCase
  setup do
    @routing = routings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:routings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create routing" do
    assert_difference('Routing.count') do
      post :create, routing: { next_question_id: @routing.next_question_id, possible_id: @routing.possible_id, question_id: @routing.question_id }
    end

    assert_redirected_to routing_path(assigns(:routing))
  end

  test "should show routing" do
    get :show, id: @routing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @routing
    assert_response :success
  end

  test "should update routing" do
    patch :update, id: @routing, routing: { next_question_id: @routing.next_question_id, possible_id: @routing.possible_id, question_id: @routing.question_id }
    assert_redirected_to routing_path(assigns(:routing))
  end

  test "should destroy routing" do
    assert_difference('Routing.count', -1) do
      delete :destroy, id: @routing
    end

    assert_redirected_to routings_path
  end
end
