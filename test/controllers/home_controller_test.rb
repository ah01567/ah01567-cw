require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "bring home page" do
    get root_url
    assert_response :success
  end

  test "bring contact page" do
    get contact_url
    assert_response :success
    assert_template layout: 'application'
    assert_select 'title', 'University Access'
    assert_select 'h1', 'Ask our team !'
    assert_select 'p', 'If you have any enquiries about any university or department field, please feel free to ask .'
  end

  test "post ask for contact" do
    post ask_for_contact_url, params:
      {name: "Ahmed", email: "Ahmed@gmail.com", telephone: "0123456789", country: "UK", university_name: "Surrey", ssage: "Hi its me"}
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end
end
