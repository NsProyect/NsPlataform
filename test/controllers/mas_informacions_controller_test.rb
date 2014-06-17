require 'test_helper'

class MasInformacionsControllerTest < ActionController::TestCase
  setup do
    @mas_informacion = mas_informacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mas_informacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mas_informacion" do
    assert_difference('MasInformacion.count') do
      post :create, mas_informacion: {  }
    end

    assert_redirected_to mas_informacion_path(assigns(:mas_informacion))
  end

  test "should show mas_informacion" do
    get :show, id: @mas_informacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mas_informacion
    assert_response :success
  end

  test "should update mas_informacion" do
    patch :update, id: @mas_informacion, mas_informacion: {  }
    assert_redirected_to mas_informacion_path(assigns(:mas_informacion))
  end

  test "should destroy mas_informacion" do
    assert_difference('MasInformacion.count', -1) do
      delete :destroy, id: @mas_informacion
    end

    assert_redirected_to mas_informacions_path
  end
end
