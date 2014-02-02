# require 'twilio-ruby'

class Takeaway

MENU = 
    { dish: "Dim Sum", price: 4.99 },
    { dish: "Steamed Rice", price: 2.50 },
    { dish: "Blackbean and Ginger chicken", price: 5.95 },
    { dish: "Cantonese duck", price: 5.95 },
    { dish: "Lettuce Parcel", price: 4.50 }
  
  attr_accessor :order, :total

  def initialize 
    @order = []
    @total = []
  end

  def menu
    MENU
  end

  def order_total(dish, quantity, subtotal)
  end

  # def total
  #   @total << order total
  # end


end