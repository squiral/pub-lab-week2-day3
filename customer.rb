class Customer

  attr_reader :name, :wallet
  #attr_accessor :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def pay_for_drink(drink, pub)
    @wallet -= drink.price
    pub.till += drink.price
  end




end
