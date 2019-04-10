require('minitest/autorun')
require('minitest/rg')

require_relative('../drink.rb')
require_relative('../customer.rb')

class TestDrink < MiniTest::Test

def setup
  @drink1 = Drink.new("Old Fashioned", 4, 2)
  @drink2 = Drink.new("Kopparberg", 5, 1)
  @drink3 = Drink.new("Pinot Grigio", 6, 3)
  @customer = Customer.new("Alison", 50, 25)
  @customer2 = Customer.new("Jimmy", 20, 16)

end

def test_drink_has_name
  assert_equal("Old Fashioned", @drink1.name)
end

def test_drink_has_price
  assert_equal(4, @drink1.price)
end

def test_drink_is_alcoholic
  assert_equal(1, @drink2.alcohol)
end

def test_drink_can_cause_inebriation
  assert_equal(3, @drink3.add_alcohol(@customer))
end




end
