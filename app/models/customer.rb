class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
    # should return **all** of the customer instances
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant_object, rating, review_content)
    new_review = Review.new(self, restaurant_object, rating, review_content)
    # given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  end

  def num_reviews
    my_reviews = Review.all.select {|review| review.customer == self}
    my_reviews.length
    # Returns the total number of reviews that a customer has authored
  end


  def restaurants

    # Returns a **unique** array of all restaurants a customer has reviewed
  end

  def self.find_by_name(name)
    # given a string of a **full name**, returns the **first customer** whose full name matches
  end

  def self.find_all_by_first_name(this_name)
    self.all.find {|customer| customer.name == this_name}
    # given a string of a first name, returns an **array** containing all customers with that first name
  end

  def self.all_names

    # should return an **array** of all of the customer full names
  end


end
