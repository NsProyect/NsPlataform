require 'test_helper'

class IpqrsControllerTest < ActionController::TestCase
  setup do
    @ipqr = ipqrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ipqrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ipqr" do
    assert_difference('Ipqr.count') do
      post :create, ipqr: { comments: @ipqr.comments, mail: @ipqr.mail, name: @ipqr.name }
    end

    assert_redirected_to ipqr_path(assigns(:ipqr))
  end

  test "should show ipqr" do
    get :show, id: @ipqr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ipqr
    assert_response :success
  end

  test "should update ipqr" do
    patch :update, id: @ipqr, ipqr: { comments: @ipqr.comments, mail: @ipqr.mail, name: @ipqr.name }
    assert_redirected_to ipqr_path(assigns(:ipqr))
  end

  test "should destroy ipqr" do
    assert_difference('Ipqr.count', -1) do
      delete :destroy, id: @ipqr
    end

    assert_redirected_to ipqrs_path
  end
end
