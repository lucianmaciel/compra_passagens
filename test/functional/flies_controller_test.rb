require 'test_helper'

class FliesControllerTest < ActionController::TestCase
  setup do
    @fly = flies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fly" do
    assert_difference('Fly.count') do
      post :create, :fly => { :airport_id => @fly.airport_id, :codigo => @fly.codigo, :data => @fly.data, :destino => @fly.destino, :hora_chegada => @fly.hora_chegada, :hora_voo => @fly.hora_voo, :origem => @fly.origem, :pilot_id => @fly.pilot_id }
    end

    assert_redirected_to fly_path(assigns(:fly))
  end

  test "should show fly" do
    get :show, :id => @fly
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fly
    assert_response :success
  end

  test "should update fly" do
    put :update, :id => @fly, :fly => { :airport_id => @fly.airport_id, :codigo => @fly.codigo, :data => @fly.data, :destino => @fly.destino, :hora_chegada => @fly.hora_chegada, :hora_voo => @fly.hora_voo, :origem => @fly.origem, :pilot_id => @fly.pilot_id }
    assert_redirected_to fly_path(assigns(:fly))
  end

  test "should destroy fly" do
    assert_difference('Fly.count', -1) do
      delete :destroy, :id => @fly
    end

    assert_redirected_to flies_path
  end
end
