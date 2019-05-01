require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Brad", "Pitt")
customer2 = Customer.new("Julia", "Robers")
customer3 = Customer.new("George", "Clooney")

restaurant1 = Restaurant.new("Nam Nam")
restaurant2 = Restaurant.new("Le Bernadin")

review1 = Review.new(customer1, restaurant1, 4, "Amazing Vietnamese Sandwiches!")
review2 = Review.new(customer2, restaurant2, 5, "Ripert amazed me with his creativity!!")
review3 = Review.new(customer1, restaurant2, 4, "Unforgettable experience!")
review4 = Review.new(customer2, restaurant1, 4, "Great sandwiches in this small eatery.")
review5 = Review.new(customer3, restaurant1, 5, "Brooklyn gem!")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
