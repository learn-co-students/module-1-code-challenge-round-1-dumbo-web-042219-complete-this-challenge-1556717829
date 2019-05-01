
class Restaurant

  attr_reader :name,:customer,:review

  @@all = []

  def initialize(name,customer,review)
    @name = name
    @customer = customer
    @review = review
    @@all << self
  end


  def self.all
    @@all
  end


  def customers
    Restaurant.all.map do |customer|
      customer.review.uniq
    end
      #`Restaurant#customers`
      #   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
      # - `
  end

  def reviews
    Restaurants.all.map do |review|
      review
    end
    #   - returns an array of all reviews for that restaurant
  end

  def average_star_rating
    `Restaurant#average_star_rating`
   #   - returns the average star rating for a restaurant based on its reviews
  end

  def longest_review
    `Restaurant#longest_review`
    #   - returns the longest review content for a given restaurant
    #
  end

  def self.find_by_name(name)
      self.all.find do |first_one|
        first_one.name == name
      end
  end

end

#`Restaurant.find_by_name(name)`
#     - given a string of restaurant name, returns the first restaurant that matches


#### Restaurant

# -
# -
# -
#   -
