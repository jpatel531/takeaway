module Till

	def incorrect_total_given?
		order.true_total != order.proposed_total
	end

	def total_checker
		raise "Incorrect Total" if incorrect_total_given?
	end

end