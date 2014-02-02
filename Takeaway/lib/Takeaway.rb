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
    #calc order total
    # raise exception if subtotal 
    # or text customer "Your order will be delivered in 1 hour" - 
    # How can the time be updated live in the text? 
  end


end