require 'test_helper'

class ItunesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itune = itunes(:one)
  end

  test "should get index" do
    get itunes_url, as: :json
    assert_response :success
  end

  test "should create itune" do
    assert_difference('Itune.count') do
      post itunes_url, params: { itune: { artistId: @itune.artistId, artistName: @itune.artistName, collectionId: @itune.collectionId, collectionName: @itune.collectionName, kind: @itune.kind, trackId: @itune.trackId, trackName: @itune.trackName, wrapperType: @itune.wrapperType } }, as: :json
    end

    assert_response 201
  end

  test "should show itune" do
    get itune_url(@itune), as: :json
    assert_response :success
  end

  test "should update itune" do
    patch itune_url(@itune), params: { itune: { artistId: @itune.artistId, artistName: @itune.artistName, collectionId: @itune.collectionId, collectionName: @itune.collectionName, kind: @itune.kind, trackId: @itune.trackId, trackName: @itune.trackName, wrapperType: @itune.wrapperType } }, as: :json
    assert_response 200
  end

  test "should destroy itune" do
    assert_difference('Itune.count', -1) do
      delete itune_url(@itune), as: :json
    end

    assert_response 204
  end
end
