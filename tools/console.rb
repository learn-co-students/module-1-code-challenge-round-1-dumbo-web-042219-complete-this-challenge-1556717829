require_relative '../config/environment.rb'
require_relative '../app/models/customer.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/review.rb'


def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
mikey = Customer.new("Mikey", "McGovern")
paul = Customer.new("Paul", "McGovern")

carlos = Restaurant.new("Carlos")
mckeons = Restaurant.new("McKeons")


mikey.add_review(carlos, "tasty", 9)
mikey.add_review(carlos, "very tasty", 2)
paul.add_review(mckeons, "yumm", 5)
paul.add_review(mckeons, "tasty", 7)
mikey.add_review(carlos, "tasty", 9)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line