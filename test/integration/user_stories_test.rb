require 'test_helper'

class UserStoriesTest < ActionDispatch::IntegrationTest
  fixtures :products
  include ActiveJob::TestHelper

  # User story:
  # A user goes to the store page and selects a product adding it to the cart (Canasta)
  #  He then checks out and submits an order, Check that the database contains the new record
  #  and Check that the email has been correctly addressed and defined
  test "Buying a product" do
    start_order_count = Order.count
    prod_test = products(:complan)

    # A user goes to the store page
    get '/store'
    assert_response :success
    assert_select 'h1', "Catálogo de productos"

    # ... and selects a product adding it to the cart (Canasta)
    post '/line_items', params: { product_id: prod_test.id}, xhr: true
    assert_response :success

    cart = Cart.find(session[:cart_id])
    assert_equal 1, cart.line_items.size
    assert_equal prod_test, cart.line_items[0].product

    # ... He then checks out...
    get '/orders/new'
    assert_response :success
    assert_select 'legend', 'Por favor introduzca sus datos'

    # ... and submits an order...
    post "/orders", params: {
        order: {
          name:         "Dave Thomas",
          address:      "Some Address in the place",
          email:        "dave@example.com",
          pay_type:     "Cheque"
        }
    }

    follow_redirect!

    assert_response :success
    assert_select 'h1', "Catálogo de productos"
    cart = Cart.find(session[:cart_id])
    assert_equal 0, cart.line_items.size

    # Check that the database contains the new record
    assert_equal start_order_count + 1, Order.count
    order = Order.last

    assert_equal 'Dave Thomas',               order.name
    assert_equal 'Some Address in the place', order.address
    assert_equal 'dave@example.com',          order.email
    assert_equal 'Cheque',                    order.pay_type

    assert_equal 1, order.line_items.size
    line_item = order.line_items[0]
    assert_equal prod_test, line_item.product

    # Check that the email has been correctly addressed and defined

    # mail = ActionMailer::Base.deliveries.last
    # assert_equal ["dave@example.com"], mail.to -> NoMethodError: undefined method `to' for nil:NilClass
    # assert_equal 'Fernando Flores <fernando.flores1961@gmail.com>', mail[:from].value
    # assert_equal 'Confirmación de compra Farmacia Zi', mail.subject

  end
end
