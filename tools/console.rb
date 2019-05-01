require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("C", "1")
c2 = Customer.new("C", "2")
c3 = Customer.new("C", "3")

res1 = Restaurant.new("RES1")
res2 = Restaurant.new("RES2")
res3 = Restaurant.new("RES3")

rev1 = Review.new(res1, "Delicious", 5, c1)
rev2 = Review.new(res1, "Good", 3, c2)
rev3 = Review.new(res1, "Nice", 4, c3)
rev4 = Review.new(res2, "Amazing", 5, c1)
rev5 = Review.new(res2, "Fantastic", 5, c2)
rev6 = Review.new(res2, "Cool Place", 4, c3)
# rev7 = Review.new(res3, "OK", 4, c1)
rev8 = Review.new(res3, "Meh", 2, c2)
rev9 = Review.new(res3, "Not Good, Horrible, Best part was the clean bathroom", 2, c3)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
