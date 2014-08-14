require 'test_helper'

class ReservasControllerTest < ActionController::TestCase
  setup do
    @reserva = reservas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reserva" do
    assert_difference('Reserva.count') do
      post :create, reserva: { apartamento: @reserva.apartamento, email: @reserva.email, fecha_ingreso: @reserva.fecha_ingreso, fecha_salida: @reserva.fecha_salida, hostal: @reserva.hostal, nombre: @reserva.nombre }
    end

    assert_redirected_to reserva_path(assigns(:reserva))
  end

  test "should show reserva" do
    get :show, id: @reserva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reserva
    assert_response :success
  end

  test "should update reserva" do
    patch :update, id: @reserva, reserva: { apartamento: @reserva.apartamento, email: @reserva.email, fecha_ingreso: @reserva.fecha_ingreso, fecha_salida: @reserva.fecha_salida, hostal: @reserva.hostal, nombre: @reserva.nombre }
    assert_redirected_to reserva_path(assigns(:reserva))
  end

  test "should destroy reserva" do
    assert_difference('Reserva.count', -1) do
      delete :destroy, id: @reserva
    end

    assert_redirected_to reservas_path
  end
end
