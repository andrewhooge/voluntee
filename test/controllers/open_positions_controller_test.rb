require 'test_helper'

class OpenPositionsControllerTest < ActionController::TestCase
  setup do
    @open_position = open_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:open_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create open_position" do
    assert_difference('OpenPosition.count') do
      post :create, open_position: { details: @open_position.details, interest: @open_position.interest, open_position: @open_position.open_position }
    end

    assert_redirected_to open_position_path(assigns(:open_position))
  end

  test "should show open_position" do
    get :show, id: @open_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @open_position
    assert_response :success
  end

  test "should update open_position" do
    patch :update, id: @open_position, open_position: { details: @open_position.details, interest: @open_position.interest, open_position: @open_position.open_position }
    assert_redirected_to open_position_path(assigns(:open_position))
  end

  test "should destroy open_position" do
    assert_difference('OpenPosition.count', -1) do
      delete :destroy, id: @open_position
    end

    assert_redirected_to open_positions_path
  end
end
