require 'test_helper'

class Api::V1::ListsControllerTest < ActionController::TestCase

  def setup
    @list = create :list
    @user = @list.user
  end

  test "#index" do
    get :index, user_id: @user.id, format: :json
    assert_response :success
  end

  test "#show" do
    get :show, id: @list.id, format: :json
    assert_response :success
  end

  test "#create" do
    attrs = attributes_for(:list)
    post :create, list: attrs, format: :json

    assert_response :success
  end

  test "#update" do
    attrs = attributes_for(:list)
    put :update, id: @list.id, list: attrs, format: :json

    assert_response :success
  end

  test "#destroy" do
    delete :destroy, id: @list.id, format: :json
    assert_response :success
  end

end