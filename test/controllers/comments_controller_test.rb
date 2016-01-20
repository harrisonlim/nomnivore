require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "comment create" do
    user = FactoryGirl.create(:user)
    sign_in user
    place = FactoryGirl.create(:place)
    post :create, :place_id => place.id, :comment => {
          :rating => '5_stars',
          :description => 'This is the description',
          }

    assert_equal 1, place.comments.count
    assert_redirected_to place_path(place)
  end
end