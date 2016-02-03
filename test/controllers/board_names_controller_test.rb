require 'test_helper'

class BoardNamesControllerTest < ActionController::TestCase
  setup do
    @board_name = board_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:board_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create board_name" do
    assert_difference('BoardName.count') do
      post :create, board_name: { group: @board_name.group, name: @board_name.name }
    end

    assert_redirected_to board_name_path(assigns(:board_name))
  end

  test "should show board_name" do
    get :show, id: @board_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @board_name
    assert_response :success
  end

  test "should update board_name" do
    patch :update, id: @board_name, board_name: { group: @board_name.group, name: @board_name.name }
    assert_redirected_to board_name_path(assigns(:board_name))
  end

  test "should destroy board_name" do
    assert_difference('BoardName.count', -1) do
      delete :destroy, id: @board_name
    end

    assert_redirected_to board_names_path
  end
end
