require 'twilio-ruby'
require 'time'

class Takeaway

MENU = 
    [{ dish: "Dim Sum", price: 4.99 },
    { dish: "Steamed Rice", price: 2.50 },
    { dish: "Blackbean and Ginger chicken", price: 5.95 },
    { dish: "Cantonese duck", price: 5.95 },
    { dish: "Lettuce Parcel", price: 4.50 }]
  
  attr_accessor :order, :total

  def initialize 
    @order = []
    @total = total
  end 

  def menu
    MENU
  end

  def valid_order?(items, prices, quantity)
    # map order to hash in an array
    # calculate order total & compare to menu total
    # methods: member? uniq flatten map select each include?
    # order_total = order.inject(0) {|sum, order| sum + order[:price]}
    raise "The subtotal is not correct" if subtotal != total 
    send_text 
  end

  def total
    @total = valid_order.inject(:+)
  end

  def send_text
   hour = 60*60
   time = Time.now + hour
    
    account_sid = 'ACf09d599309a59149225dc7943f86d6f3'
    auth_token = 'aa0e0a542b58a9ed3c18ae43f98b33fc'

    @client = Twilio::REST::Client.new account_sid, auth_token
    @client.account.messages.create(
      :from => '+441980322031',
      :to => 'my mobile ',
      :body => 'Hey there! Your order will be delivered by #{time}'
    )
  end

end