require 'test_helper'

class DiscussiomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discussiom = discussioms(:one)
  end

  test "should get index" do
    get discussioms_url
    assert_response :success
  end

  test "should get new" do
    get new_discussiom_url
    assert_response :success
  end

  test "should create discussiom" do
    assert_difference('Discussiom.count') do
      post discussioms_url, params: { discussiom: { content: @discussiom.content, title: @discussiom.title } }
    end

    assert_redirected_to discussiom_url(Discussiom.last)
  end

  test "should show discussiom" do
    get discussiom_url(@discussiom)
    assert_response :success
  end

  test "should get edit" do
    get edit_discussiom_url(@discussiom)
    assert_response :success
  end

  test "should update discussiom" do
    patch discussiom_url(@discussiom), params: { discussiom: { content: @discussiom.content, title: @discussiom.title } }
    assert_redirected_to discussiom_url(@discussiom)
  end

  test "should destroy discussiom" do
    assert_difference('Discussiom.count', -1) do
      delete discussiom_url(@discussiom)
    end

    assert_redirected_to discussioms_url
  end
end
