require 'test_helper'

class AdminssSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'Admin.count' do
      post admins_path, params: { admin: { name:  "",
                                         email: "admin@invalid",
                                         password:              "foo",
                                         password_confirmation: "bar" } }
    end
    assert_template 'admins/new'
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors'
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'Admin.count', 1 do
      post admins_path, params: { admin: { name:  "Example Admin",
                                         email: "admin@example.com",
                                         password:              "password",
                                         password_confirmation: "password" } }
    end
    follow_redirect!
    assert_template 'admins/show'
    assert_not flash.alert
  end
end