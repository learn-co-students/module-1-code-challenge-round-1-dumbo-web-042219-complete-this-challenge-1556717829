require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


kenton = Customer.new("Kenton","Archer")
kester = Customer.new("Kester","Archer")

helen = Review.new
graham = Review.new
miles = Review.new
danielle = Review.new


wendys = Restaurant.new("wendys","Kenton","decent")
ihop = Restaurant.new("IHOP","sarah","nasty")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
