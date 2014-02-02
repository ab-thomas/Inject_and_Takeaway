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

  def calc_order(dish, quantity, subtotal)
   raise "The subtotal is not correct" if subtotal != total
    subtotal = 
    # text customer 
  end

  def total
    @total << 

  end

  def 

  def send_text
   time = Time.now + # 1 hr
    
    account_sid = 'ACf09d599309a59149225dc7943f86d6f3'
    auth_token = 'aa0e0a542b58a9ed3c18ae43f98b33fc'

    @client = Twilio::REST::Client.new account_sid, auth_token
    # "Your order will be delivered in 1 hour" - 
    # How can text use actual time?

    @client.account.messages.create(
      :from => '+441980322031',
      :to => 'my mobile ',
      :body => 'Hey there!'
    )
  end

end