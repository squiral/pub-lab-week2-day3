require('minitest/autorun')
require('minitest/rg')

require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class TestCustomer < MiniTest::Test

  def setup
    @drink3 = Drink.new("Pinot Grigio", 6)

    @pub = Pub.new("CiderClan")

    @customer = Customer.new("Alison", 50)
  end

  def test_alison_exists
    assert_equal("Alison", @customer.name)
  end

  def test_wallet_has_cash
    assert_equal(50, @customer.wallet)
  end

  def test_pay_for_drink
    @pub.drinks = [@drink3]
    @customer.pay_for_drink(@drink3, @pub)
    assert_equal(44, @customer.wallet)
    assert_equal(6, @pub.till)
  end




end
