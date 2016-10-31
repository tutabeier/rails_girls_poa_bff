require 'test_helper'

class ExtrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @extra = extras(:one)
  end

  test "should get index" do
    get extras_url, as: :json
    assert_response :success
  end

  test "should create extra" do
    assert_difference('Extra.count') do
      post extras_url, params: { extra: { description: @extra.description, link: @extra.link, title: @extra.title } }, as: :json
    end

    assert_response 201
  end

  test "should show extra" do
    get extra_url(@extra), as: :json
    assert_response :success
  end

  test "should update extra" do
    patch extra_url(@extra), params: { extra: { description: @extra.description, link: @extra.link, title: @extra.title } }, as: :json
    assert_response 200
  end

  test "should destroy extra" do
    assert_difference('Extra.count', -1) do
      delete extra_url(@extra), as: :json
    end

    assert_response 204
  end
end
