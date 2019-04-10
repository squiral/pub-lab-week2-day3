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
    @drinks.slice!(index, 1)
  end



end
