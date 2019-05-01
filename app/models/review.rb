

class Review

  attr_reader :customer,:restaurant,:rating,:content

  @@all = []

  def initialize()
  # # # @name = name
  # # @customer = customer
  # # @restaurant = restaurant
  # # @rating = rating
  # # @content = content
  @@all << self
  end

  def self.all
    @@all
  end

  # def customer
  #   @customer
  #   #`Review#customer`
  #  #   - returns the customer object for that given review
  # end
  #
  # def restaurant
  #   @restaurant
  #   # - `Review#restaurant`
  #   #   - returns the restaurant object for that given review
  #
  # end
  #
  # def rating
  #   # - `Review#rating`
  #   #   - returns the star rating for a restaurant. This should be an integer from 1-5
  # end
  #
  # def content
  #   #`Review#content`
  #  #   - returns the review content, as a string, for a particular review
  # end


end
#### Build out the following methods on the `Review` class
#
# -
#   - Once a review is created, I should not be able to change the author
#   - Once a review is created, I should not be able to change the restaurant

# -
