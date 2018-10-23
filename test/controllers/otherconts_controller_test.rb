require 'test_helper'

class OthercontsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @othercont = otherconts(:one)
  end

  test "should get index" do
    get otherconts_url
    assert_response :success
  end

  test "should get new" do
    get new_othercont_url
    assert_response :success
  end

  test "should create othercont" do
    assert_difference('Othercont.count') do
      post otherconts_url, params: { othercont: {  } }
    end

    assert_redirected_to othercont_url(Othercont.last)
  end

  test "should show othercont" do
    get othercont_url(@othercont)
    assert_response :success
  end

  test "should get edit" do
    get edit_othercont_url(@othercont)
    assert_response :success
  end

  test "should update othercont" do
    patch othercont_url(@othercont), params: { othercont: {  } }
    assert_redirected_to othercont_url(@othercont)
  end

  test "should destroy othercont" do
    assert_difference('Othercont.count', -1) do
      delete othercont_url(@othercont)
    end

    assert_redirected_to otherconts_url
  end
end
