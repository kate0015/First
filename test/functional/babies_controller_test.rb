require 'test_helper'

class BabiesControllerTest < ActionController::TestCase
  setup do
    @baby = babies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:babies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baby" do
    assert_difference('Baby.count') do
      post :create, baby: { age: @baby.age, name: @baby.name, surname: @baby.surname }
    end

    assert_redirected_to baby_path(assigns(:baby))
  end

  test "should show baby" do
    get :show, id: @baby
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baby
    assert_response :success
  end

  test "should update baby" do
    put :update, id: @baby, baby: { age: @baby.age, name: @baby.name, surname: @baby.surname }
    assert_redirected_to baby_path(assigns(:baby))
  end

  test "should destroy baby" do
    assert_difference('Baby.count', -1) do
      delete :destroy, id: @baby
    end

    assert_redirected_to babies_path
  end
end
