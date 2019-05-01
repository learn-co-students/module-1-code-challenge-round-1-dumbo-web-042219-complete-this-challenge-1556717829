class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reviews
    Review.all
  end

  def customers
    unique_reviews = Customers.all.select do |restaurant|
      restaurant.reviews
    end
    unique_reviews
  end

  def find_by_name(name)
    Restaurant.all.find do |name|
      name == restaurnt.name
    end
  end


end
