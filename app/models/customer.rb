class Customer

  attr_reader :first_name, :last_name,:review

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end


  def self.all
    @@all
  end


  def full_name
    "#{first_name} #{last_name}"
  end



  def add_review(restaurant,content,rating)
    Customer.all.map do |review|
      review.customer == self
    end
  end

  def num_reviews
    comment = Review.new(name,restaurant,customer)
    # creates a new review and associates it with that customer and restaurant.
    # - `Customer#num_reviews`
  end

  def restaurants
    Customer.all.map do |restaurants|
      resaurants.review.uniq
    end
  end
end


#### Customer
#
# - `Customer#add_review(restaurant, content, rating)`
#   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer),
#   - Returns the total number of reviews that a customer has authored
# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed
