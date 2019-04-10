class Drink

attr_reader :name, :price, :alcohol

def initialize(name, price, alcohol)
  @name = name
  @price = price
  @alcohol = alcohol
end

def add_alcohol(customer)
  customer.inebriation += @alcohol
end










end
