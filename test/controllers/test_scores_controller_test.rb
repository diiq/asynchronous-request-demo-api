require 'test_helper'

class TestScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_score = test_scores(:one)
  end

  test "should get index" do
    get test_scores_url, as: :json
    assert_response :success
  end

  test "should create test_score" do
    assert_difference('TestScore.count') do
      post test_scores_url, params: { test_score: { name: @test_score.name, score: @test_score.score, student_id: @test_score.student_id } }, as: :json
    end

    assert_response 201
  end

  test "should show test_score" do
    get test_score_url(@test_score), as: :json
    assert_response :success
  end

  test "should update test_score" do
    patch test_score_url(@test_score), params: { test_score: { name: @test_score.name, score: @test_score.score, student_id: @test_score.student_id } }, as: :json
    assert_response 200
  end

  test "should destroy test_score" do
    assert_difference('TestScore.count', -1) do
      delete test_score_url(@test_score), as: :json
    end

    assert_response 204
  end
end
