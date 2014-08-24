require 'customer'

describe Customer do 

	let(:customer) {Customer.new("Jamie", "+447739515287")}
	let(:takeaway) {Takeaway.new}

	it 'is initialized with a name and a phone number' do 
		expect(customer.name).to eq "Jamie"
		expect(customer.phone_number).to eq "+447739515287"
	end

	it 'can place an order at a takeaway' do 
		expect(takeaway).to receive(:process)
		customer.place_order_at(takeaway, {"Chow mein" => 2}, 3)
		expect(customer.order).not_to be_nil
	end

end