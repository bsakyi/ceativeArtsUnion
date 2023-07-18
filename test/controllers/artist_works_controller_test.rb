require "test_helper"

class ArtistWorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist_work = artist_works(:one)
  end

  test "should get index" do
    get artist_works_url, as: :json
    assert_response :success
  end

  test "should create artist_work" do
    assert_difference("ArtistWork.count") do
      post artist_works_url, params: { artist_work: { description: @artist_work.description, ownership_status: @artist_work.ownership_status, work_title: @artist_work.work_title, work_type: @artist_work.work_type, year: @artist_work.year } }, as: :json
    end

    assert_response :created
  end

  test "should show artist_work" do
    get artist_work_url(@artist_work), as: :json
    assert_response :success
  end

  test "should update artist_work" do
    patch artist_work_url(@artist_work), params: { artist_work: { description: @artist_work.description, ownership_status: @artist_work.ownership_status, work_title: @artist_work.work_title, work_type: @artist_work.work_type, year: @artist_work.year } }, as: :json
    assert_response :success
  end

  test "should destroy artist_work" do
    assert_difference("ArtistWork.count", -1) do
      delete artist_work_url(@artist_work), as: :json
    end

    assert_response :no_content
  end
end
