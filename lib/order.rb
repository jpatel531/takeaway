require_relative 'menu'
require_relative 'takeaway'


class Order

	attr_reader :proposed_total, :customer, :dish_list, :time_placed, :takeaway
	attr_accessor :dishes, :menu

	def initialize(customer, takeaway, dish_list, proposed_total)
		@dishes ||= []
		@time_placed, @customer, @takeaway, @dish_list, @proposed_total, @menu  = Time.new, customer, takeaway, dish_list, proposed_total, takeaway.menu
		process_dishes_from_list
	end

	def process_dishes_from_list
		dish_list.each do |name, quantity|
			quantity.times { @dishes << menu.dishes.find {|dish| dish.name == name}}
		end
	end

	def true_total
		dishes.map(&:price).inject(&:+)
	end

end