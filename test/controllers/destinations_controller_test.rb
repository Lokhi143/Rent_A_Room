require 'test_helper'

class DestinationsControllerTest < ActionController::TestCase
  setup do
    @destination = destinations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:destinations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create destination" do
    assert_difference('Destination.count') do
      post :create, destination: { city_id: @destination.city_id, latitude: @destination.latitude, longitude: @destination.longitude, name: @destination.name }
    end

    assert_redirected_to destination_path(assigns(:destination))
  end

  test "should show destination" do
    get :show, id: @destination
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @destination
    assert_response :success
  end

  test "should update destination" do
    patch :update, id: @destination, destination: { city_id: @destination.city_id, latitude: @destination.latitude, longitude: @destination.longitude, name: @destination.name }
    assert_redirected_to destination_path(assigns(:destination))
  end

  test "should destroy destination" do
    assert_difference('Destination.count', -1) do
      delete :destroy, id: @destination
    end

    assert_redirected_to destinations_path
  end
end
