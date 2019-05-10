require 'test_helper'

class UserTest < ActiveSupport::TestCase
  50.times do |i| # just to make sure it works with new parallelization default 🛤

    define_method "test_can_create_update_and_fetch_customers_time_#{i}" do
      mal = users(:mal)

      customer_one = Stripe::Customer.create
      users(:mal).update!(stripe_customer_id: customer_one.id)

      assert_equal customer_one.id, mal.stripe_customer.id

      Stripe::Customer.update(mal.stripe_customer.id, metadata: { key: "value" })
      assert_equal "value", mal.stripe_customer(reload: true).metadata["key"]
    end

  end
end
