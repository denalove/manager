require 'test_helper'

class TimeclocksControllerTest < ActionController::TestCase
  setup do
    @timeclock = timeclocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timeclocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timeclock" do
    assert_difference('Timeclock.count') do
      post :create, timeclock: { date: @timeclock.date, time_in: @timeclock.time_in, time_in_break: @timeclock.time_in_break, time_in_lunch: @timeclock.time_in_lunch, time_out: @timeclock.time_out, time_out_break: @timeclock.time_out_break, time_out_lunch: @timeclock.time_out_lunch, user_id: @timeclock.user_id }
    end

    assert_redirected_to timeclock_path(assigns(:timeclock))
  end

  test "should show timeclock" do
    get :show, id: @timeclock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timeclock
    assert_response :success
  end

  test "should update timeclock" do
    patch :update, id: @timeclock, timeclock: { date: @timeclock.date, time_in: @timeclock.time_in, time_in_break: @timeclock.time_in_break, time_in_lunch: @timeclock.time_in_lunch, time_out: @timeclock.time_out, time_out_break: @timeclock.time_out_break, time_out_lunch: @timeclock.time_out_lunch, user_id: @timeclock.user_id }
    assert_redirected_to timeclock_path(assigns(:timeclock))
  end

  test "should destroy timeclock" do
    assert_difference('Timeclock.count', -1) do
      delete :destroy, id: @timeclock
    end

    assert_redirected_to timeclocks_path
  end
end
