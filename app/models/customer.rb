class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
  @@all
  end

  def add_review(restaurant, content, rating)
  #     - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
    Review.new(self, restaurant, rating, content)
  end

  def my_reviews
    my_reviews =Review.all.select do |review|
        review.customer ==self #incase only a first name is passed(decided on customer id insteead for multiple cases of firstname)
      end
    end


  def num_reviews
  #     - Returns the total number of reviews that a customer has authored
    self.my_reviews.count
  end

  def restaurants
  #     - Returns a **unique** array of all restaurants a customer has reviewed
    self.my_reviews
  end

  def self.find_by_name(full_name)
  #       - given a string of a **full name**, returns the **first customer** whose full name matches
  my_name = self.all.find do |full_names|
      full_names == full_name
    end
    my_name.split.first
  end

  def self.find_all_by_first_name(first_name)
  #       - given a string of a first name, returns an **array** containing all customers with that first name
    Customer.all.select do |customers|
      customers.first_name == first_name
  end

  def self.all_names
  #       - should return an **array** of all of the customer full names
    Customer.all.select do |customers|
      customers.first_name != nil && customer.last_name != nil
  end




end
