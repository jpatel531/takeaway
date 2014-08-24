require 'order'

describe Order do 

	let(:order) {Order.new({"Chow mein" => 2}, 4)}

	it 'is associated with a menu' do 
		expect(order.menu).to be_a Menu
	end

	it 'can be created with a dish and its quantity' do 
		chow_meins = order.dishes.map(&:name)
		expect(chow_meins).to eq ["Chow mein", "Chow mein"]
	end

	it 'is also initialized with a number that the proposed total of the items' do
		expect(order.proposed_total).to eq 4
	end

	it 'has a true total' do
		expect(order.true_total).to eq 3
	end

	it 'complains if you give the wrong total' do 
		expect(order.incorrect_total_given?).to be_truthy
		expect{order.total_checker}.to raise_error
	end

	it 'complains if you order something not on the menu' do 
		expect{Order.new({"pork" => 1}, 3)}.to raise_error
		# incorrect_order = Order.new({"pork" => 1}, 3)
	end



end