require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "create comment" do
  	user = FactoryGirl.create(:user)
    sign_in user

	  assert_difference 'Comment.count' do
	  	post :create, {:place_id => place.id, :comment => {
	  		:message => 'yolo',
	  		:rating => '1_star',
	        }
	      }
  	  end
  end

  assert_equal 1, user.comments.count
  assert_redirected_to places_path
end
