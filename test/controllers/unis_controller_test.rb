require 'test_helper'

class UnisControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @uni = unis(:one)
    @student = students(:one)
    sign_in @student
  end

  test "should get index" do
    get unis_url
    assert_response :success
  end

  test "should get new" do
    get new_uni_url
    assert_response :success
  end

  test "should create uni" do
    assert_difference('Uni.count') do
      post unis_url, params: { uni: { location: @uni.location, name: @uni.name + " create", student_id: @student.id} }
    end

    assert_redirected_to uni_url(Uni.last)
  end

  test "should show uni" do
    get uni_url(@uni)
    assert_response :success
  end

  test "should get edit" do
    get edit_uni_url(@uni)
    assert_response :success
  end

  test "should update uni" do
    patch uni_url(@uni), params: { uni: { location: @uni.location, name: @uni.name } }
    assert_redirected_to uni_url(@uni)
  end

  test "should destroy uni" do
    assert_difference('Uni.count', -1) do
      delete uni_url(@uni)
    end

    assert_redirected_to unis_url
  end
end
