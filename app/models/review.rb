class Review

  attr_reader :customer, :restaurant, :rating, :content

  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    self.all.select do |review|
      review.customer == self
    end
  end

  def restaurant
    self.all.select do |review|
      review.restaurant == self
    end
  end

  def rating
    self.all.select do |review|
      review.rating == self
    end
  end

  def content
    self.all.select do |review|
      review.content == self
    end
  end

end
