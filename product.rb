class Product
  def initialize(name, price, tax_rate)
    @name = name
    @price = price
    @tax_rate = tax_rate
  end

  def total_price
    total_price = @price * (1 + @tax_rate)
  end
end

cheese = Product.new("cheese", 3.99, 0.15)
puts cheese.inspect

puts cheese.total_price
