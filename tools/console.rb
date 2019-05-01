require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


chilis = Restaurant.new("Chilis")
whataburger = Restaurant.new("Whataburger")
taqueria = Restaurant.new("Taqueria")

bob = Customer.new("Bob", "Jones")
tom = Customer.new("Tom", "Brady")
jose = Customer.new("Jose", "Canyousee")
kelly = Customer.new("Kelly", "AnnCantWay")


review1 = Review.new(bob, chilis, 3, "Chilis is okay")
review1andahalf = Review.new(bob, whataburger, 3, "Chilis is okay")
review2 = Review.new(tom, whataburger, 5, "Whataburger is the best")
review3 = Review.new(jose, whataburger, 5, "Whataburger is the BEST")
review4 = Review.new(kelly, taqueria, 1, "No more immigrant food")


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
