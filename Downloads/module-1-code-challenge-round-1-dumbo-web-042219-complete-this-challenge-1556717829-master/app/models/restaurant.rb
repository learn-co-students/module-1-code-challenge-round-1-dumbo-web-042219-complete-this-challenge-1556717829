class Restaurant
  attr_reader :name

@@all = []

  def initialize(name)
    @name = name
  @@all << self
  end

# 'Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
def customers
  self.reviews.collect |customer|
  bindin.pry
    review.customer
end

#<-------------------->

# `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant

def reviews
  myreviews = Review.all.select do |customers|
    customers.restaurant == self
  end
  myreviews.uniq
end

def average_star_rating
  restau_reviews = Review.all.select do |reviews|
    reviews.restaurant == self
  end
  # total_reviews =
end

def self.find_by_name(restaurant)
  self.all.find do |resto|
    resto.name == restaurant
  end
end

end
