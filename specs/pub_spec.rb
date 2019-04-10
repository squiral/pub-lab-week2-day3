require('minitest/autorun')
require('minitest/rg')

require_relative('../pub.rb')
require_relative('../drink.rb')

class TestPub < MiniTest::Test

  def setup
    @drink1 = Drink.new("Old Fashioned", 4)
    @drink2 = Drink.new("Kopparberg", 5)
    @drink3 = Drink.new("Pinot Grigio", 6)

    @pub = Pub.new("CiderClan")
    @pub.drinks = [@drink1, @drink2, @drink3]
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

  def test_supply_drink
    @pub.supply_drink(@drink2)
    assert_equal(2, @pub.drinks.length)
  end







end
