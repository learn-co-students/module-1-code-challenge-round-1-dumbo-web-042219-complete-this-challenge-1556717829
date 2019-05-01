class Restaurant
  attr_reader :name
  @@all

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  @@all
  end

  def customers
  #     - Returns a **unique** list of all customers who have reviewed a particular restaurant.
    restaurant_reviews=Review.all.select do |reviews|
      reviews.restaurant == self
    end
    restaurant_reviews.customer
  end

  def reviews
  #     - returns an array of all reviews for that restaurant
  Review.all.select do |reviews|
    reviews.restaurant == self
  end

  def average_star_rating
  #     - returns the average star rating for a restaurant based on its reviews
    self.review
    count = 0
    stars = 0
    review.restaurant.each do |restaurants|
      if restaurant.rating == (1..5)
        count +=1
        stars += rating
      elsif restaurant.rating < 1
        count +=1
        stars += 1
      elsif restaurant.rating > 5
        count += 1
        stars += 5
      end
    end
    average=(stars)/(count)
  end
  end

  def longest_review
  #     - returns the longest review content for a given restaurant
    self.review.content.map  do |review_content|
      review_content.split.count
      
  end

  def self.find_by_name(name)
  #       - given a string of restaurant name, returns the first restaurant that matches
   Restaurant.all.find do |restaurant|
     restaurant.name == name
   end
  end

end
