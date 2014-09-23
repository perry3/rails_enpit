require 'test_helper'

class BoksControllerTest < ActionController::TestCase
  setup do
    @bok = boks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bok" do
    assert_difference('Bok.count') do
      post :create, bok: { author: @bok.author, title: @bok.title }
    end

    assert_redirected_to bok_path(assigns(:bok))
  end

  test "should show bok" do
    get :show, id: @bok
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bok
    assert_response :success
  end

  test "should update bok" do
    patch :update, id: @bok, bok: { author: @bok.author, title: @bok.title }
    assert_redirected_to bok_path(assigns(:bok))
  end

  test "should destroy bok" do
    assert_difference('Bok.count', -1) do
      delete :destroy, id: @bok
    end

    assert_redirected_to boks_path
  end
end
