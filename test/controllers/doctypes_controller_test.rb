require 'test_helper'

class DoctypesControllerTest < ActionController::TestCase
  setup do
    @doctype = doctypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctype" do
    assert_difference('Doctype.count') do
      post :create, doctype: { abbrev: @doctype.abbrev, name: @doctype.name }
    end

    assert_redirected_to doctype_path(assigns(:doctype))
  end

  test "should show doctype" do
    get :show, id: @doctype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctype
    assert_response :success
  end

  test "should update doctype" do
    patch :update, id: @doctype, doctype: { abbrev: @doctype.abbrev, name: @doctype.name }
    assert_redirected_to doctype_path(assigns(:doctype))
  end

  test "should destroy doctype" do
    assert_difference('Doctype.count', -1) do
      delete :destroy, id: @doctype
    end

    assert_redirected_to doctypes_path
  end
end
