require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

#######CUSTOMERS
jo = Customer.new("Jo", "Customer")
jeff = Customer.new("Jeff", "Somelast")

#######RESTAURANTS
jamaican = Restaurant.new("Jamaican")
haitian = Restaurant.new("Haitian")

#######REVIEWS
review1 = Review.new(jo, jamaican, "four")

review2 = Review.new(jeff,haitian, "Fave restaurant", 5)

binding.pry

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
