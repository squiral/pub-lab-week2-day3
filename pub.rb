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

  def take_money(item)
    @till += item.price
  end

  def of_age(customer)
    customer.age >= 18 ? true : false
  end

  def too_drunk(customer)
    customer.inebriation >= 7 ? true : false
  end



end
