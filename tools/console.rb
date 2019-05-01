require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ted = Customer.new("Ted", "Mosby")
barney = Customer.new("Barney", "Stinson")
robin = Customer.new("Robin", "Scherbatsky")

mc_larens = Restaurant.new("McLaren\'s Pub")
hoser_hut = Restaurant.new("Hoser Hut")
shinjitsu = Restaurant.new("Shinjitsu")

ted.add_review(mc_larens, "fun fact about mclaren's.... blah blah", 5)
barney.add_review(mc_larens, "great place to suit up", 5)
robin.add_review(mc_larens, "meh", 4)


robin.add_review(hoser_hut, "this is a real bar", 5)

ted.add_review(shinjitsu, "fun fact about  shinjitsu .... blah blah", 5)
barney.add_review(shinjitsu, "robin does not think i can leave a longer review than ted, challenge accepted! blah blah blah", 3)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line