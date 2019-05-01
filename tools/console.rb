require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
john_a = Customer.new("John","Hill")
john_b = Customer.new("John", "Smith")
james_h = Customer.new("James","Herring")
james_c = Customer.new("James", "Carmicheal")
keturah = Customer.new("Keturah", "Hill")
jermaine = Customer.new("Jermaine", "Hill")

cook_out = Restaurant.new("Cookout")
vinos = Restaurant.new("Pizza Vino's")
golden = Restaurant.new("Golden Corral")
tuesday = Restaurant.new("Ruby Tuesday")
charlies = Restaurant.new("O Charlies")
s_n_s = Restaurant.new("Steaak and Shake")

r1 = Review.new(john_a, cook_out, 4, "Good southern style food")
r2 = Review.new(john_a, vinos, 5, "Best New York Style pizza down south.")
r3 = Review.new(jermaine, vinos, 10, "I just love pizza.")
r4 = Review.new(keturah, charlies, 2, "I used to like the food but lately it hasn't been good. I don't know what happened.")
r5 = Review.new(john_a, charlies, 3, "Taste has been off lately.")
r6 = Review.new(jermaine, charlies, 5, "I love rolls.")
r7 = Review.new(james_c, golden, 5, "Can you sayy all you can eat.")
r8 = Review.new(james_h, tuesday, 3, "over priced.")
r9 = Review.new(keturah, s_n_s, 5, "Good food and milk shakes.")
r10 = Review.new(jermaine, s_n_s, 5, "yumm.")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
