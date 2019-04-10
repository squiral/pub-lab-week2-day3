require('minitest/autorun')
require('minitest/rg')

require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class TestPub < MiniTest::Test

  def setup
    @drink1 = Drink.new("Old Fashioned", 4, 2)
    @drink2 = Drink.new("Kopparberg", 5, 1)
    @drink3 = Drink.new("Pinot Grigio", 6, 3)

    @pub = Pub.new("CiderClan")
    @pub.drinks = [@drink1, @drink2, @drink3]

    @customer = Customer.new("Alison", 50, 25, 9)
    @customer2 = Customer.new("Jimmy", 20, 16)

  end

  def test_name
    assert_equal("CiderClan", @pub.name)
  end

  def test_till_exists
    assert_equal(0, @pub.till)
  end

  def test_drinks_in_pub
    assert_equal(3, @pub.drinks.length)
  end

  # def test_supply_drink
  #   @pub.supply_drink(@drink2)
  #   assert_equal(2, @pub.drinks.length)
  # end

  def test_old_enough_to_buy_alcohol
    assert_equal(true, @pub.of_age(@customer))
  end

  def test_underage
    assert_equal(false, @pub.of_age(@customer2))
  end

  def test_take_money
    @pub.take_money(@drink3)
    assert_equal(6, @pub.till)
  end

  def test_too_drunk
    assert_equal(true, @pub.too_drunk(@customer))
  end




end
