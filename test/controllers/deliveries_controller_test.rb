require "test_helper"

class DeliveriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery = deliveries(:one)
  end

  test "should get index" do
    get deliveries_url, as: :json
    assert_response :success
  end

  test "should create delivery" do
    assert_difference('Delivery.count') do
      post deliveries_url, params: { delivery: { address: @delivery.address, message: @delivery.message, name: @delivery.name, name2: @delivery.name2, phonenum: @delivery.phonenum, phonenum2: @delivery.phonenum2, product: @delivery.product } }, as: :json
    end

    assert_response 201
  end

  test "should show delivery" do
    get delivery_url(@delivery), as: :json
    assert_response :success
  end

  test "should update delivery" do
    patch delivery_url(@delivery), params: { delivery: { address: @delivery.address, message: @delivery.message, name: @delivery.name, name2: @delivery.name2, phonenum: @delivery.phonenum, phonenum2: @delivery.phonenum2, product: @delivery.product } }, as: :json
    assert_response 200
  end

  test "should destroy delivery" do
    assert_difference('Delivery.count', -1) do
      delete delivery_url(@delivery), as: :json
    end

    assert_response 204
  end
end
