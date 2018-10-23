require 'test_helper'

class RfpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rfp = rfps(:one)
  end

  test "should get index" do
    get rfps_url
    assert_response :success
  end

  test "should get new" do
    get new_rfp_url
    assert_response :success
  end

  test "should create rfp" do
    assert_difference('Rfp.count') do
      post rfps_url, params: { rfp: {  } }
    end

    assert_redirected_to rfp_url(Rfp.last)
  end

  test "should show rfp" do
    get rfp_url(@rfp)
    assert_response :success
  end

  test "should get edit" do
    get edit_rfp_url(@rfp)
    assert_response :success
  end

  test "should update rfp" do
    patch rfp_url(@rfp), params: { rfp: {  } }
    assert_redirected_to rfp_url(@rfp)
  end

  test "should destroy rfp" do
    assert_difference('Rfp.count', -1) do
      delete rfp_url(@rfp)
    end

    assert_redirected_to rfps_url
  end
end
