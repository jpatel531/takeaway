require_relative 'takeaway'

class Customer

	attr_reader :name, :phone_number
	attr_accessor :order

	def initialize(name, phone_number)
		@name = name
		@phone_number = phone_number
	end

	def place_order_at takeaway, dishes, proposed_total
		@order = Order.new(self, takeaway, dishes, proposed_total)
		takeaway.process order
	end

end