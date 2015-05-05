require 'test_helper'

class LedsControllerTest < ActionController::TestCase
  setup do
    @led = leds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create led" do
    assert_difference('Led.count') do
      post :create, led: {  }
    end

    assert_redirected_to led_path(assigns(:led))
  end

  test "should show led" do
    get :show, id: @led
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @led
    assert_response :success
  end

  test "should update led" do
    patch :update, id: @led, led: {  }
    assert_redirected_to led_path(assigns(:led))
  end

  test "should destroy led" do
    assert_difference('Led.count', -1) do
      delete :destroy, id: @led
    end

    assert_redirected_to leds_path
  end
end
