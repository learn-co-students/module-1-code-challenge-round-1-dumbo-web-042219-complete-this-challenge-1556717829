class Review

  attr_reader :review, :first_name, :last_name, :customer, :restaurant, :name

@@all = []

  def initialize(content, rating, customer, restaurant)
    @content = content
    @rating = rating
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

  def customer

  end

  def restaurant

  end

  def rating

  end

  def content

  end


end
