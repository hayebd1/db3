require 'test_helper'

class SplatsControllerTest < ActionController::TestCase
  setup do
    @splat = splats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:splats)
  end

  test "should create splat" do
    assert_difference('Splat.count') do
      post :create, splat: { body: @splat.body, user_id: @splat.user_id }
    end

    assert_response 201
  end

  test "should show splat" do
    get :show, id: @splat
    assert_response :success
  end

  test "should update splat" do
    put :update, id: @splat, splat: { body: @splat.body, user_id: @splat.user_id }
    assert_response 204
  end

  test "should destroy splat" do
    assert_difference('Splat.count', -1) do
      delete :destroy, id: @splat
    end

    assert_response 204
  end
end
