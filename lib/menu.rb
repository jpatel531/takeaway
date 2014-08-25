require_relative 'dish'


class Menu

	attr_reader :dishes

	def initialize(*dishes)
		@dishes ||= []
		dishes.each {|dish| @dishes << dish}
	end

end