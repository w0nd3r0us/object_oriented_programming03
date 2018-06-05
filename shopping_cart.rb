require_relative "items"

class Cart
  @@shopping_cart = []
  @@tax_rate = 1.13
  # def initialize
  #   @shopping_cart = []
  # end

  def self.add_to_cart(item)
    @@shopping_cart << item
  end

  def self.remove_from_cart(item)
    @@shopping_cart.delete(item)
  end

  def self.total_cost_before_tax
    total = 0
    @@shopping_cart.each do |product|
      total += product.price
    end
    return total
  end

  def self.total_cost_after_tax
    total_after_tax = self.total_cost_before_tax * @@tax_rate
    return total_after_tax.round(2)
  end

  def self.shopping_cart
    @@shopping_cart
  end


end

apple = Items.new('apple', 2.99)
cereal = Items.new('cereal', 6.99)


Cart.add_to_cart(apple)
Cart.add_to_cart(cereal)



p Cart.remove_from_cart(cereal)
p Cart.total_cost_before_tax
p Cart.total_cost_after_tax
p Cart.shopping_cart
