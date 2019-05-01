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

#<-------------------->

  def add_review(restaurant,content, rating)
    review3 = Review.new(self, restaurant, content, rating)
  end

#<-------------------->

  def num_reviews

  end

#<-------------------->

  def restaurants
    Review.all.select do |resto|
      reviews.customer == self
    endre
  end

  def self.find_by_name(full_name)
    self.all.select |customer|
    customer.full_name == first_name
  end

  def self.all_names
    @@all
    end

end
