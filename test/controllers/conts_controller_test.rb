require 'test_helper'

class ContsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cont = conts(:one)
  end

  test "should get index" do
    get conts_url
    assert_response :success
  end

  test "should get new" do
    get new_cont_url
    assert_response :success
  end

  test "should create cont" do
    assert_difference('Cont.count') do
      post conts_url, params: { cont: {  } }
    end

    assert_redirected_to cont_url(Cont.last)
  end

  test "should show cont" do
    get cont_url(@cont)
    assert_response :success
  end

  test "should get edit" do
    get edit_cont_url(@cont)
    assert_response :success
  end

  test "should update cont" do
    patch cont_url(@cont), params: { cont: {  } }
    assert_redirected_to cont_url(@cont)
  end

  test "should destroy cont" do
    assert_difference('Cont.count', -1) do
      delete cont_url(@cont)
    end

    assert_redirected_to conts_url
  end
end
