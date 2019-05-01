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
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
  	Customer.all.find { |customer| customer.full_name == name }
  end

  def self.find_all_by_first_name(name)
  	Customer.all.select { |customer| customer.first_name == name }
  end

  def self.all_names
  	Customer.all.map { |customer| customer.first_name }
  end

  def add_review(restaurant, content, rating)
  	Review.new(restaurant, content, rating, self)
  end

  def num_reviews
  	arr = Review.all.select { |review| review.customer == self }
  	arr.length
  end

  def restaurants
  	arr = Review.all.select { |review| review.customer == self }
  	# arr2 = arr.uniq
  	arr2 = arr.map.uniq { |review| review.restaurant}
  	arr3 = arr2.map { |restaurant| restaurant.restaurant }
  	arr3.map { |restaurant| restaurant.name }
  end


end