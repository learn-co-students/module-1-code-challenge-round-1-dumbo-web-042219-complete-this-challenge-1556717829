require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

miles = Customer.new("Miles", "Marillo")
miles2 = Customer.new("Miles", "Davis")
jay = Customer.new("Jay", "Sherman")
shakespeare = Customer.new("William", "Shakespeare")

quatorze = Restaurant.new("Quatorze Bis")
kittery = Restaurant.new("Kittery")
aldila = Restaurant.new("Al Di La")

jay.add_review(quatorze, "It stinks!", 0)
jay.add_review(quatorze, "It still stinks!", 1)
shakespeare.add_review(quatorze, "So are you to my thoughts as food to life,
Or as sweet-season'd showers are to the ground;
And for the peace of you I hold such strife
As 'twixt a miser and his wealth is found.
Now proud as an enjoyer, and anon
Doubting the filching age will steal his treasure;
Now counting best to be with you alone,
Then better'd that the world may see my pleasure:
Sometime all full with feasting on your sight,
And by and by clean starved for a look;
Possessing or pursuing no delight
Save what is had, or must from you be took.
   Thus do I pine and surfeit day by day,
   Or gluttoning on all, or all away.", 3)
jay.add_review(quatorze, "It stinks a little less!", 20)
jay.add_review(kittery, "It stinks!", 0)

review1 = Review.new(aldila, "Pretty, pretty good.", 4, miles)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line