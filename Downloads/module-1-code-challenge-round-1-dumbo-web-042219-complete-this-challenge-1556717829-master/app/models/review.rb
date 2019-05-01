class Review
  attr_accessor :customer, :restaurant, :rating, :content

  @@all = []

# binding.pry
  def initialize(first_name, restaurant, content, *rating)
    @first_name = first_name
    @restaurant = restaurant
    @content =content
    @rating = 3
    @@all << self
  end
# binding.pry
#<-------------------->

  def self.all
    @@all
  end



end
