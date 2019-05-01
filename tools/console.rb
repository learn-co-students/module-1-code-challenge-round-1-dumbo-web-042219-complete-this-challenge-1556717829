require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

larry = Customer.new("Larry", "Stooge")
moe  = Customer.new("Moe", "Stooge")
curly  = Customer.new("Curly", "Stooge")

dunkin = Restaurant.new("Dunkn Donuts")
shake = Restaurant.new("Shake Shack")
twoboots = Restaurant.new("Two Boots Pizza")

rev1 = larry.add_review("This place sucks", 1, dunkin)
rev2 = moe.add_review("Love it", 5, twoboots)
rev3 = curly.add_review("Meh", 3, shake)
rev4 = moe.add_review("One word my friends, Barf", 1, dunkin)
rev5 = larry.add_review("I dream in hamburgers", 4, shake)
rev6 = curly.add_review("2legit2quit", 5, twoboots)
rev7 = larry.add_review("MyFave", 4, twoboots)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
