require 'test_helper'

class UsetsControllerTest < ActionController::TestCase
  setup do
    @uset = usets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uset" do
    assert_difference('Uset.count') do
      post :create, uset: { email: @uset.email, name: @uset.name }
    end

    assert_redirected_to uset_path(assigns(:uset))
  end

  test "should show uset" do
    get :show, id: @uset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uset
    assert_response :success
  end

  test "should update uset" do
    put :update, id: @uset, uset: { email: @uset.email, name: @uset.name }
    assert_redirected_to uset_path(assigns(:uset))
  end

  test "should destroy uset" do
    assert_difference('Uset.count', -1) do
      delete :destroy, id: @uset
    end

    assert_redirected_to usets_path
  end
end
