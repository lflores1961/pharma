require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received(orders(:one))
    assert_equal "Confirmación de compra Farmacia Zi", mail.subject
    assert_equal ["dave@example.com"], mail.to
    assert_equal ["fernando.flores1961@gmail.com"], mail.from
    assert_match "Estimado", mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped(orders(:one))
    assert_equal "Envío de compra Farmacia Zi", mail.subject
    assert_equal ["dave@example.com"], mail.to
    assert_equal ["fernando.flores1961@gmail.com"], mail.from
    assert_match "Estimado", mail.body.encoded
  end

end
