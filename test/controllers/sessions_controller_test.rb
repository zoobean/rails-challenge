require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "redirects to the sign in form when user is unauthenticated" do
    get edit_user_registration_path
    assert_response(:redirect)
    assert_redirected_to(new_user_session_path)
  end

  test "authenticed users can view the page to edit their information" do
    get new_user_session_path
    log_in(:user_001)
    assert_response(:success)
  end
end
