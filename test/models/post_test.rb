require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "Order should be most recent first" do
   assert_equal posts(:most_recent), Post.first
  end
end
