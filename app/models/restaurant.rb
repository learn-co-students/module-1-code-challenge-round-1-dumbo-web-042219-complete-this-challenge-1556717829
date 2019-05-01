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

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    customers = reviews.map {|review| review.customer}
    customers.uniq
  end

  def average_star_rating
    ratings = reviews.map {|review| review.rating}
    sum = ratings.inject(0){|sum, x| sum + x }
    sum / ratings.length
  end

  def longest_review
    contents = reviews.map {|review| review.content}
    contents.max_by(&:length)
  end

  def self.find_by_name(name)
    all.find {|restaurant| restaurant.name == name}
  end
  
end
