require 'test_helper'

class ItunesQueriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itunes_query = itunes_queries(:one)
  end

  test "should get index" do
    get itunes_queries_url, as: :json
    assert_response :success
  end

  test "should create itunes_query" do
    assert_difference('ItunesQuery.count') do
      post itunes_queries_url, params: { itunes_query: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show itunes_query" do
    get itunes_query_url(@itunes_query), as: :json
    assert_response :success
  end

  test "should update itunes_query" do
    patch itunes_query_url(@itunes_query), params: { itunes_query: {  } }, as: :json
    assert_response 200
  end

  test "should destroy itunes_query" do
    assert_difference('ItunesQuery.count', -1) do
      delete itunes_query_url(@itunes_query), as: :json
    end

    assert_response 204
  end
end
