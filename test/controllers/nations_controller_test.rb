require 'test_helper'

class NationsControllerTest < ActionController::TestCase
  setup do
    @nation = nations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nation" do
    assert_difference('Nation.count') do
      post :create, nation: {  }
    end

    assert_redirected_to nation_path(assigns(:nation))
  end

  test "should show nation" do
    get :show, id: @nation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nation
    assert_response :success
  end

  test "should update nation" do
    patch :update, id: @nation, nation: {  }
    assert_redirected_to nation_path(assigns(:nation))
  end

  test "should destroy nation" do
    assert_difference('Nation.count', -1) do
      delete :destroy, id: @nation
    end

    assert_redirected_to nations_path
  end
end
