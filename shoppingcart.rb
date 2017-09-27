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

  #total cost of all cart_items after tax
end

my_cart = ShoppingCart.new
my_cart.add_product("cheese", 4.99, 0.13)
my_cart.add_product("berries", 2.99, 0.15)
my_cart.add_product("chicken", 7.99, 0.13)

puts my_cart.cart_items.inspect

my_cart.remove_product("chicken")
puts my_cart.cart_items.inspect
