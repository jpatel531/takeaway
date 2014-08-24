require 'menu'

describe Menu do 

	let(:menu) {
		menu = Menu.new(
			Dish.new("cheese", 1),
			Dish.new("pork", 2),
			Dish.new("beer", 1.5)) }

	it 'should have 3 dishes when initialized with 5 dishes' do
		expect(menu.dishes.count).to eq 3
	end


end