#Takeaway

Part of our Week 4 Friday Test at Makers Academy was to write a takeaway program. We were to implement:

* A list of dish with prices.
* Place an order by giving the list of dishes, their quantities, and a number that should be the exact total. If the sum is not correc the method should raise an error. If all is OK, the customer is sent a text saying that the order was placed successfully and that it will be delivered an hour from now.

##Objectives

To learn object oriented programming, with TDD, and to use the Twilio API gem.

##Technologies

* Ruby
* RSpec
* Twilio


##How to run it

```
git clone https://github.com/jpatel531/takeaway.git
cd takeaway
irb
require './lib/takeaway'
```

Create a takeaway:

```ruby
takeaway = Takeaway.new
```

Create a customer with a name and a phone number:

```ruby
customer = Customer.new("Jamie", "1234567890")
```

Place an order at the takeaway specifying a hash with {item => quantity} and the proposed total:

```ruby
customer.place_order_at takeaway, {"Chow mein" => 1}, 1.5
```

If the order hasn't raised an incorrect total error and if you have a Twilio-registered phone number, you should receive a text message thanking you for your order.

##How to run tests

` rspec `

