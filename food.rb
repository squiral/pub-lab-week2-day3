class Food

attr_reader :name, :price, :rejuvenation

  def initialize(name, price, rejuvenation)
    @name = name
    @price = price
    @rejuvenation = rejuvenation
  end

  def rejuvenate_customer(customer)
    customer.inebriation -= @rejuvenation
  end






end
