require 'order'

describe Order do 

	let(:order) {Order.new(Customer.new("Jamie", "1234"), Takeaway.new, {"Chow mein" => 2}, 4)}

	before(:each) do
		order.menu = Takeaway.new.menu
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


end