require 'test_helper'

class ListsControllerTest < ActionController::TestCase

  def setup
    @list = create :list
  end

  test "#index" do
    get :index
    assert_response :success
  end

  test "#show" do
    get :show, id: @list.id
    assert_response :success
  end

end