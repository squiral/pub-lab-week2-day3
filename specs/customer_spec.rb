require('minitest/autorun')
require('minitest/rg')

require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class TestCustomer < MiniTest::Test

  def setup
    @drink3 = Drink.new("Pinot Grigio", 6, 3)
    @drink1 = Drink.new("Old Fashioned", 4, 2)

    @pub = Pub.new("CiderClan")

    @customer = Customer.new("Alison", 50, 25)
    @customer2 = Customer.new("Jimmy", 20, 16)

  end

  def test_alison_exists
    assert_equal("Alison", @customer.name)
  end

  def test_wallet_has_cash
    assert_equal(50, @customer.wallet)
  end

  def test_pay_for_drink
    @pub.drinks = [@drink3]
    @customer.pay_for_drink(@drink3, @pub, @customer)
    assert_equal(44, @customer.wallet)
  end

  def test_pay_for_drink__of_age
    @pub.drinks = [@drink3]
    @customer.pay_for_drink(@drink3, @pub, @customer)
    assert_equal(44, @customer.wallet)
  end

  def test_pay_for_drink__underage
    @pub.drinks = [@drink3]
    @customer.pay_for_drink(@drink3, @pub, @customer2)
    assert_equal(20, @customer2.wallet)
  end

  def test_pay_for_drink__gets_you_drunk
    @pub.drinks = [@drink3]
    @customer.pay_for_drink(@drink3, @pub, @customer)
    assert_equal(3, @customer.inebriation)
  end

  def test_pay_for_drink__multiple
    @pub.drinks = [@drink3]
    @customer.pay_for_drink(@drink3, @pub, @customer)
    @customer.pay_for_drink(@drink3, @pub, @customer)
    assert_equal(6, @customer.inebriation)
  end

  def test_pay_for_drink__too_drunk
    @customer.pay_for_drink(@drink3, @pub, @customer)
    @customer.pay_for_drink(@drink3, @pub, @customer)
    @customer.pay_for_drink(@drink1, @pub, @customer)
    @customer.pay_for_drink(@drink1, @pub, @customer)
    assert_equal(8, @customer.inebriation)
  end


end
