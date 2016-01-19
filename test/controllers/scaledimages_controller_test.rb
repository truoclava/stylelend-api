require 'test_helper'

class ScaledimagesControllerTest < ActionController::TestCase
  setup do
    @scaledimage = scaledimages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scaledimages)
  end

  test "should create scaledimage" do
    assert_difference('Scaledimage.count') do
      post :create, scaledimage: { height: @scaledimage.height, image_id: @scaledimage.image_id, width: @scaledimage.width }
    end

    assert_response 201
  end

  test "should show scaledimage" do
    get :show, id: @scaledimage
    assert_response :success
  end

  test "should update scaledimage" do
    put :update, id: @scaledimage, scaledimage: { height: @scaledimage.height, image_id: @scaledimage.image_id, width: @scaledimage.width }
    assert_response 204
  end

  test "should destroy scaledimage" do
    assert_difference('Scaledimage.count', -1) do
      delete :destroy, id: @scaledimage
    end

    assert_response 204
  end
end
