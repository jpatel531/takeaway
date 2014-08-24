require_relative 'menu'
require_relative 'order'
require_relative 'customer'
require_relative 'till'
require 'twilio-ruby'

class Takeaway

	include Till

	attr_reader :menu, :order, :sms_sender

	def initialize
		@menu = Menu.new(Dish.new("Chow mein", 1.5), Dish.new("Chips", 1))
		@sms_sender = Twilio::REST::Client.new("AC2ee3aaedbbcefa36241064e99199d80d", "417e9ad3fe91f49d24ebbedafee0562a")
	end

	def process order
		@order = order
		total_checker
		send_confirmation_of order
	end

	def send_confirmation_of order
		name = order.customer.name
		number = order.customer.phone_number
		time = (order.time_placed + 3600).strftime("%I:%M %p")
		sms_sender.account.messages.create(from: 441295477003, to: number, body: "Thank you, #{name}! Your order was placed and will be delivered by #{time}")
	end

end