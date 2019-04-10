require('minitest/autorun')
require('minitest/rg')

require_relative('../drink.rb')

class TestDrink < MiniTest::Test

def setup
  @drink1 = Drink.new("Old Fashioned", 4)
  @drink2 = Drink.new("Kopparberg", 5)
  @drink3 = Drink.new("Pinot Grigio", 6)
end

def test_drink_has_name
  assert_equal("Old Fashioned", @drink1.name)
end



end
