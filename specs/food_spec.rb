require('minitest/autorun')
require('minitest/rg')

require_relative('../food.rb')
require_relative('../customer.rb')

class TestFood < MiniTest::Test

  def setup
    @dinner = Food.new("Spag Bol", 8, 2)
    @snack = Food.new("Chips", 3, 1)
    @lunch = Food.new("burger", 6, 2)
  end

  def test_name_price_rejuvenation
    assert_equal("Spag Bol", @dinner.name)
    assert_equal(8, @dinner.price)
    assert_equal(2, @dinner.rejuvenation)
  end

  def test_rejuvenation_of_customer
    @customer = Customer.new("James", 30, 33, 6)
    @lunch.rejuvenate_customer(@customer)
    assert_equal(4, @customer.inebriation)
  end












end
