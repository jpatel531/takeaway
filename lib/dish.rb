class Dish

	attr_reader :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end

	def formatted_price
		format("£%.2f", price)
	end




end