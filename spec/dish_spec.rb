require 'dish'

describe Dish do

	let(:dish) {Dish.new("Chow mein", 1.5)}

	it 'is initialized with a dish and a price' do 
		expect(dish.name).to eq "Chow mein"
		expect(dish.price).to eq 1.5
	end




end