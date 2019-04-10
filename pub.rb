class Pub

  attr_reader :name
  attr_accessor :till, :drinks

  def initialize(name)
    @name = name
    @till = 0
    @drinks = []
  end

  def supply_drink(drink)
    index = @drinks.index(drink)
    return @drinks.delete_at(index)
  end

  def take_money(drink)
    @till += drink.price
  end

  def of_age(customer)
    customer.age >= 18 ? true : false
  end


end
