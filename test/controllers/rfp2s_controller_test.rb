require 'test_helper'

class Rfp2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rfp2 = rfp2s(:one)
  end

  test "should get index" do
    get rfp2s_url
    assert_response :success
  end

  test "should get new" do
    get new_rfp2_url
    assert_response :success
  end

  test "should create rfp2" do
    assert_difference('Rfp2.count') do
      post rfp2s_url, params: { rfp2: {  } }
    end

    assert_redirected_to rfp2_url(Rfp2.last)
  end

  test "should show rfp2" do
    get rfp2_url(@rfp2)
    assert_response :success
  end

  test "should get edit" do
    get edit_rfp2_url(@rfp2)
    assert_response :success
  end

  test "should update rfp2" do
    patch rfp2_url(@rfp2), params: { rfp2: {  } }
    assert_redirected_to rfp2_url(@rfp2)
  end

  test "should destroy rfp2" do
    assert_difference('Rfp2.count', -1) do
      delete rfp2_url(@rfp2)
    end

    assert_redirected_to rfp2s_url
  end
end
