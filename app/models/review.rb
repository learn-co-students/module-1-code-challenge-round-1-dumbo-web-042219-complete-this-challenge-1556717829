class Review
  attr_reader :customer, :restaurant, :rating
  attr_accessor :content

  @@all = []
  def initialize(restaurant, content, rating = (1...5), customer)
    @@restaurant = restaurant
    @@content = content
    @@rating = rating
    @@customer = customer
    @@all << self
  end

  def self.all
    @@all
  end

end
