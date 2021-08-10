require "test_helper"

class DayysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dayy = dayys(:one)
  end

  test "should get index" do
    get dayys_url, as: :json
    assert_response :success
  end

  test "should create dayy" do
    assert_difference('Dayy.count') do
      post dayys_url, params: { dayy: { comment: @dayy.comment, dayDate: @dayy.dayDate, location: @dayy.location, user_id: @dayy.user_id, vacation_id: @dayy.vacation_id } }, as: :json
    end

    assert_response 201
  end

  test "should show dayy" do
    get dayy_url(@dayy), as: :json
    assert_response :success
  end

  test "should update dayy" do
    patch dayy_url(@dayy), params: { dayy: { comment: @dayy.comment, dayDate: @dayy.dayDate, location: @dayy.location, user_id: @dayy.user_id, vacation_id: @dayy.vacation_id } }, as: :json
    assert_response 200
  end

  test "should destroy dayy" do
    assert_difference('Dayy.count', -1) do
      delete dayy_url(@dayy), as: :json
    end

    assert_response 204
  end
end
