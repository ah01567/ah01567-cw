require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  test " get contact email" do
  mail = ContactMailer.contact_email("Ahmed@gmail.com", "Ahmed Henine", "1234567890", "UK", "Surrey University", @message = "Hi, its me")
  assert_equal ['office@admission.com'], mail.to
  assert_equal ['office@admission.com'], mail.from
 end
end
