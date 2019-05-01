class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
    # returns an array of all restaurants
  end

  def customers
    our_reviews = Review.all.select {|review| review.restaurant == self}
    our_reviews.map {|review| review.customer}
    # Returns a **unique** list of all customers who have reviewed a particular restaurant.
  end

  def reviews
    our_reviews = Review.all.select {|review| review.restaurant == self}

    # returns an array of all reviews for that restaurant
  end

  def average_star_rating
    our_reviews = Review.all.select {|review| review.restaurant == self}
    # I know I need to make this a helper method but I'm rushing
    our_stars_array = our_reviews.map {|review| review.rating}
    our_stars_array.inject(:+)/our_stars_array.length
    # returns the average star rating for a restaurant based on its reviews
  end

  def longest_review
    our_reviews = Review.all.select {|review| review.restaurant == self}
    our_review_content = our_reviews.map {|review| review.content}
    our_review_content.max_by(&:length)
    # returns the longest review content for a given restaurant
  end

  def self.find_by_name(this_name)
    self.all.find {|restaurant| restaurant.name == this_name}
# given a string of restaurant name, returns the first restaurant that matches
  end

end
