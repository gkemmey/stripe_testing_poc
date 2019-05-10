class User < ApplicationRecord
  def stripe_customer(reload: false)
    return nil unless stripe_customer_id
    return @stripe_customer if defined?(@stripe_customer) && !reload
    @stripe_customer = nil if reload

    @stripe_customer ||= Stripe::Customer.retrieve(stripe_customer_id)
  end
end
