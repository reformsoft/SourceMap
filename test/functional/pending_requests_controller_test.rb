require 'test_helper'

class PendingRequestsControllerTest < ActionController::TestCase
  setup do
    @pending_request = pending_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pending_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pending_request" do
    assert_difference('PendingRequest.count') do
      post :create, pending_request: { address: @pending_request.address, description: @pending_request.description, email: @pending_request.email, lat: @pending_request.lat, lng: @pending_request.lng, name: @pending_request.name, phone: @pending_request.phone, tags: @pending_request.tags }
    end

    assert_redirected_to pending_request_path(assigns(:pending_request))
  end

  test "should show pending_request" do
    get :show, id: @pending_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pending_request
    assert_response :success
  end

  test "should update pending_request" do
    put :update, id: @pending_request, pending_request: { address: @pending_request.address, description: @pending_request.description, email: @pending_request.email, lat: @pending_request.lat, lng: @pending_request.lng, name: @pending_request.name, phone: @pending_request.phone, tags: @pending_request.tags }
    assert_redirected_to pending_request_path(assigns(:pending_request))
  end

  test "should destroy pending_request" do
    assert_difference('PendingRequest.count', -1) do
      delete :destroy, id: @pending_request
    end

    assert_redirected_to pending_requests_path
  end
end
