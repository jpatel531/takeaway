module Calculator

	def true_total
		prices = []
		dishes.each {|dish| prices << dish.price}
		prices.inject(&:+)
	end

	def incorrect_total_given?
		true_total != proposed_total
	end

	def total_checker
		raise "Incorrect Total" if incorrect_total_given?
	end

end