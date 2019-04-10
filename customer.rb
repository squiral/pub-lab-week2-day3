class Customer

  attr_reader :name, :wallet, :age
  #attr_accessor :wallet
  attr_accessor :inebriation

  def initialize(name, wallet, age, inebriation = 0)
    @name = name
    @wallet = wallet
    @age = age
    @inebriation = inebriation
  end

  def pay_for_drink(drink, pub, customer)
    if pub.too_drunk(customer)

    else
      pub.of_age(customer)
      @wallet -= drink.price
      pub.take_money(drink)
      drink.add_alcohol(customer)
    end
  end



end
