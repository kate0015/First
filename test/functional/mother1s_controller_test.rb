require 'test_helper'

class Mother1sControllerTest < ActionController::TestCase
  setup do
    @mother1 = mother1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mother1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mother1" do
    assert_difference('Mother1.count') do
      post :create, mother1: { age: @mother1.age, name: @mother1.name, surname: @mother1.surname }
    end

    assert_redirected_to mother1_path(assigns(:mother1))
  end

  test "should show mother1" do
    get :show, id: @mother1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mother1
    assert_response :success
  end

  test "should update mother1" do
    put :update, id: @mother1, mother1: { age: @mother1.age, name: @mother1.name, surname: @mother1.surname }
    assert_redirected_to mother1_path(assigns(:mother1))
  end

  test "should destroy mother1" do
    assert_difference('Mother1.count', -1) do
      delete :destroy, id: @mother1
    end

    assert_redirected_to mother1s_path
  end
end
