require 'takeaway'

describe Takeaway do 

	let(:takeaway) {Takeaway.new}

	it 'has a menu' do 
		expect(takeaway.menu).to be_a Menu
	end

	it 'complains if you give the wrong total' do 
		expect{takeaway.total_checker}.to raise_error
	end

	it 'sends a confirmation message when an order is created' do
		expect(takeaway).to receive(:send_confirmation_of)
		customer = Customer.new("Jamie", 07739515287)
		customer.place_order_at takeaway, {"Chow mein" => 2}, 3
	end

end