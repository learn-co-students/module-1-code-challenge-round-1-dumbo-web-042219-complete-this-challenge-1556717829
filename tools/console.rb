require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

danielle,oneill = Customer.new (first_name, last_name)
kanye,west = Customer.new (first_name, last_name)

julianas = Restaurant.new(name)
grimaldis = Restaurant.new(name)

review1 = Review.new (julianas,great_pizza,5,danielle)
review2 = Review.new (grimaldis,horrible_food,1,kanye)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
