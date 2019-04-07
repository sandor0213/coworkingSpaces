require 'test_helper'

class CoworkingspaceControllerTest < ActionDispatch::IntegrationTest
  test "should get user_id:" do
    get coworkingspace_user_id:_url
    assert_response :success
  end

  test "should get integer" do
    get coworkingspace_integer_url
    assert_response :success
  end

  test "should get price:" do
    get coworkingspace_price:_url
    assert_response :success
  end

  test "should get float" do
    get coworkingspace_float_url
    assert_response :success
  end

  test "should get area:" do
    get coworkingspace_area:_url
    assert_response :success
  end

  test "should get float" do
    get coworkingspace_float_url
    assert_response :success
  end

  test "should get description:" do
    get coworkingspace_description:_url
    assert_response :success
  end

  test "should get string" do
    get coworkingspace_string_url
    assert_response :success
  end

  test "should get is_booked:" do
    get coworkingspace_is_booked:_url
    assert_response :success
  end

  test "should get boolean" do
    get coworkingspace_boolean_url
    assert_response :success
  end

  test "should get address:" do
    get coworkingspace_address:_url
    assert_response :success
  end

  test "should get string" do
    get coworkingspace_string_url
    assert_response :success
  end

  test "should get city:" do
    get coworkingspace_city:_url
    assert_response :success
  end

  test "should get string" do
    get coworkingspace_string_url
    assert_response :success
  end

  test "should get beginDare" do
    get coworkingspace_beginDare_url
    assert_response :success
  end

end
