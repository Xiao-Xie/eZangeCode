require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "contact_submitted" do
    mail = Notifier.contact_submitted
    assert_equal "Contact submitted", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
