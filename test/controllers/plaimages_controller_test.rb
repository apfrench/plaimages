require 'test_helper'

class PlaimagesControllerTest < ActionController::TestCase
  setup do
    @plaimage = plaimages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plaimages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plaimage" do
    assert_difference('Plaimage.count') do
      post :create, plaimage: { comment: @plaimage.comment, description: @plaimage.description, latitude: @plaimage.latitude, longitude: @plaimage.longitude }
    end

    assert_redirected_to plaimage_path(assigns(:plaimage))
  end

  test "should show plaimage" do
    get :show, id: @plaimage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plaimage
    assert_response :success
  end

  test "should update plaimage" do
    patch :update, id: @plaimage, plaimage: { comment: @plaimage.comment, description: @plaimage.description, latitude: @plaimage.latitude, longitude: @plaimage.longitude }
    assert_redirected_to plaimage_path(assigns(:plaimage))
  end

  test "should destroy plaimage" do
    assert_difference('Plaimage.count', -1) do
      delete :destroy, id: @plaimage
    end

    assert_redirected_to plaimages_path
  end
end
