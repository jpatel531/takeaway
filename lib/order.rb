require_relative 'menu'
require_relative 'calculator'


class Order

	include Calculator

	attr_reader :menu, :proposed_total
	attr_accessor :dishes

	def initialize(*args)
		@menu = Menu.new(Dish.new("Chow mein", 1.5), Dish.new("Chips", 1))
		@dishes ||= []
		args = args.partition {|arg| arg.is_a? Hash}
		@proposed_total = args.last[0]
		assign_dish_to_order(args.first)
	end

	def assign_dish_to_order(args)
		args.each do |item|
			item.each do |name, quantity|
				raise "#{name} not on menu" if not_on_menu? name
				quantity.times { @dishes << menu.dishes.find {|dish| dish.name == name}}
			end
		end
	end

	def not_on_menu?(name)
		menu.dishes.none? {|dish| name == dish.name }
	end


end