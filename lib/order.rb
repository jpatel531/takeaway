require_relative 'menu'
require_relative 'calculator'
require_relative 'takeaway'


class Order

	include Calculator

	attr_reader :proposed_total, :customer, :dish_list, :time_placed
	attr_accessor :dishes, :menu

	def initialize(customer, takeaway, dish_list, proposed_total)
		@dishes ||= []
		@time_placed = Time.new
		@customer = customer
		@takeaway = takeaway
		@dish_list = dish_list
		@proposed_total = proposed_total
		@menu = takeaway.menu
		process_dishes_from_list
	end

	def process_dishes_from_list
		dish_list.each do |name, quantity|
			quantity.times { @dishes << menu.dishes.find {|dish| dish.name == name}}
		end
	end

end