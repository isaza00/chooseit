require 'test_helper'

class BootcampsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bootcamp = bootcamps(:one)
  end

  test "should get index" do
    get bootcamps_url, as: :json
    assert_response :success
  end

  test "should create bootcamp" do
    assert_difference('Bootcamp.count') do
      post bootcamps_url, params: { bootcamp: { curriculum_score: @bootcamp.curriculum_score, description: @bootcamp.description, job_support_score: @bootcamp.job_support_score, locations: @bootcamp.locations, name: @bootcamp.name, overall_score: @bootcamp.overall_score, subjects: @bootcamp.subjects } }, as: :json
    end

    assert_response 201
  end

  test "should show bootcamp" do
    get bootcamp_url(@bootcamp), as: :json
    assert_response :success
  end

  test "should update bootcamp" do
    patch bootcamp_url(@bootcamp), params: { bootcamp: { curriculum_score: @bootcamp.curriculum_score, description: @bootcamp.description, job_support_score: @bootcamp.job_support_score, locations: @bootcamp.locations, name: @bootcamp.name, overall_score: @bootcamp.overall_score, subjects: @bootcamp.subjects } }, as: :json
    assert_response 200
  end

  test "should destroy bootcamp" do
    assert_difference('Bootcamp.count', -1) do
      delete bootcamp_url(@bootcamp), as: :json
    end

    assert_response 204
  end
end
