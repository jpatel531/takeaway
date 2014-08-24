require_relative 'menu'


class Takeaway

	attr_reader :menu

	def initialize
		@menu = Menu.new(Dish.new("Chow mein", 1.5), Dish.new("Chips", 1))
	end

	def process order
	end

end