class Review
  
  attr_accessor :content, :rating
  @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    self.all << self
  end

  def self.all
    @@all
  end

  def all
    self.class.all
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

  def inspect
    "#{customer.inspect}, #{restaurant.inspect}, #{content}, #{rating} "
  end
end

