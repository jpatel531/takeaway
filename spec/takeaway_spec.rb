require 'takeaway'

describe Takeaway do 

	let(:takeaway) {Takeaway.new}

	it 'has a menu' do 
		expect(takeaway.menu).to be_a Menu
	end

end