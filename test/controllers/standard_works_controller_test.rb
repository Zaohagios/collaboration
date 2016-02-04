require 'test_helper'

class StandardWorksControllerTest < ActionController::TestCase
  setup do
    @standard_work = standard_works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:standard_works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create standard_work" do
    assert_difference('StandardWork.count') do
      post :create, standard_work: { board: @standard_work.board, due_time: @standard_work.due_time, fri: @standard_work.fri, level: @standard_work.level, mon: @standard_work.mon, owner: @standard_work.owner, sat: @standard_work.sat, start_time: @standard_work.start_time, subject: @standard_work.subject, sun: @standard_work.sun, thu: @standard_work.thu, tue: @standard_work.tue, wed: @standard_work.wed }
    end

    assert_redirected_to standard_work_path(assigns(:standard_work))
  end

  test "should show standard_work" do
    get :show, id: @standard_work
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @standard_work
    assert_response :success
  end

  test "should update standard_work" do
    patch :update, id: @standard_work, standard_work: { board: @standard_work.board, due_time: @standard_work.due_time, fri: @standard_work.fri, level: @standard_work.level, mon: @standard_work.mon, owner: @standard_work.owner, sat: @standard_work.sat, start_time: @standard_work.start_time, subject: @standard_work.subject, sun: @standard_work.sun, thu: @standard_work.thu, tue: @standard_work.tue, wed: @standard_work.wed }
    assert_redirected_to standard_work_path(assigns(:standard_work))
  end

  test "should destroy standard_work" do
    assert_difference('StandardWork.count', -1) do
      delete :destroy, id: @standard_work
    end

    assert_redirected_to standard_works_path
  end
end
