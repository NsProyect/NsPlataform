require 'test_helper'

class ApartamentsControllerTest < ActionController::TestCase
  setup do
    @apartament = apartaments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apartaments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apartament" do
    assert_difference('Apartament.count') do
      post :create, apartament: { adress: @apartament.adress, amenities: @apartament.amenities, cost: @apartament.cost, room: @apartament.room, states_id: @apartament.states_id }
    end

    assert_redirected_to apartament_path(assigns(:apartament))
  end

  test "should show apartament" do
    get :show, id: @apartament
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apartament
    assert_response :success
  end

  test "should update apartament" do
    patch :update, id: @apartament, apartament: { adress: @apartament.adress, amenities: @apartament.amenities, cost: @apartament.cost, room: @apartament.room, states_id: @apartament.states_id }
    assert_redirected_to apartament_path(assigns(:apartament))
  end

  test "should destroy apartament" do
    assert_difference('Apartament.count', -1) do
      delete :destroy, id: @apartament
    end

    assert_redirected_to apartaments_path
  end
end
