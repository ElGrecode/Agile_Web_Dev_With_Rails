require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "Pragmatic Order Confirmed", mail.subject
    assert_equal ["designgumption@gmail.com"], mail.to
    assert_equal ["whatsup@vivval.com"], mail.from
    assert_match "Pragmatic Order Confirmed", mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "Pragmatic Order Shipped", mail.subject
    assert_equal ["whatsup@vivval.com"], mail.to
    assert_equal ["designgumption@gmail.com"], mail.from
    assert_match "Pragmatic Order Shipped", mail.body.encoded
  end

end
