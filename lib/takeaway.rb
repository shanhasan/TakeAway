require 'twilio-ruby'

class Takeaway

  attr_reader :customer, :order

  def initialize(customer, order)
    @customer = customer
    @order = order
  end

  def send_sms
    account_sid = 'AC61a9cb945374b1d928ae888f11ccbe29'
    auth_token = 'ae8157ecac505886dae248fe1f086b9d'
    @client = Twilio::REST::Client.new account_sid, auth_token
    @client.account.messages.create({
      :body => "Thank you #{customer.name}! Your order totalling £#{order.calculate}0 was placed and will be delivered before #{(Time.now + 3600).strftime("%H:%M")}",
      :from => '441855231010',
      :to => customer.number,
      })
  end

end