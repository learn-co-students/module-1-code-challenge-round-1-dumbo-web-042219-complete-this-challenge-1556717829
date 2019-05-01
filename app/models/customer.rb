class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def all
    self.class.all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def reviews
    reviews = Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    self.reviews.count
  end

  def restaurants
    restaurants_visited = self.reviews.map {|review| review.restaurant}
    restaurants_visited.uniq
  end

  def self.find_by_name(name)
    self.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    self.all.find {|customer| customer.first_name == name}
  end

  def self.all_names
    self.all.map {|customer| customer.full_name}
  end

  def inspect
    "#{full_name}"
  end
end
