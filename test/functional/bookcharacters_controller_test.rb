require 'test_helper'

class BookcharactersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookcharacters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookcharacter" do
    assert_difference('Bookcharacter.count') do
      post :create, :bookcharacter => { }
    end

    assert_redirected_to bookcharacter_path(assigns(:bookcharacter))
  end

  test "should show bookcharacter" do
    get :show, :id => bookcharacters(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => bookcharacters(:one).to_param
    assert_response :success
  end

  test "should update bookcharacter" do
    put :update, :id => bookcharacters(:one).to_param, :bookcharacter => { }
    assert_redirected_to bookcharacter_path(assigns(:bookcharacter))
  end

  test "should destroy bookcharacter" do
    assert_difference('Bookcharacter.count', -1) do
      delete :destroy, :id => bookcharacters(:one).to_param
    end

    assert_redirected_to bookcharacters_path
  end
end
