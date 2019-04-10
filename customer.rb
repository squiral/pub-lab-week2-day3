class Customer

  attr_reader :name, :wallet, :age
  #attr_accessor :wallet

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
  end

  def pay_for_drink(drink, pub, customer)
    pub.of_age(customer)
    @wallet -= drink.price
    pub.take_money(drink)
  end



end
