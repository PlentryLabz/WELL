require 'test_helper'

class Api::V1::ListsControllerTest < ActionController::TestCase

  def setup
    @list = create :list
  end

  test "#create" do
    attrs = attributes_for(:record)
    post :create, list_id: @list, record: attrs, format: :json

    assert_response :success
  end

  test "#destroy" do
  end

end