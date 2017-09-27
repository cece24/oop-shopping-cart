require_relative "product"

class ShoppingCart

  def initialize
    @cart_items = []
  end

  def cart_items
    @cart_items
  end

  # add product to cart_items
  def add_product(name, price, tax_rate)
    new_product = Product.new(name, price, tax_rate)
    @cart_items << new_product
  end

  # remove product from cart_items
  def remove_product(name)
    @cart_items = @cart_items.select do |item|
      item.name != name
    end
  end

  #total cost of all cart_items before tax
  def total_before_tax
    total = 0
    @cart_items.each do |item|
      total += item.price
    end
    return total
  end

  #total cost of all cart_items after tax
  def total_with_tax
    total = 0
    @cart_items.each do |item|
      total += item.total_price
    end
    return total
  end
end

my_cart = ShoppingCart.new
my_cart.add_product("cheese", 4.99, 0.13)
my_cart.add_product("berries", 2.99, 0.15)
my_cart.add_product("chicken", 7.99, 0.13)

puts my_cart.cart_items.inspect

my_cart.remove_product("chicken")
puts my_cart.cart_items.inspect

puts "Total before tax is #{my_cart.total_before_tax}"
puts "Total with tax is #{my_cart.total_with_tax}"
