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

  def self.find_by_name(name)
  	Restaurant.all.find {|restaurant| restaurant.name == name }
  end

  def customers
  	# arr = Review.all.select { |review| review.restaurant == self }
  	arr = self.reviews
  	arr2 = arr.map { |review| review.customer }
  	arr2.uniq
  end

  def reviews
  	Review.all.select { |review| review.restaurant == self }
  end

  def average_star_rating
  	# arr = self.reviews
  	arr = self.reviews.map { |review| review.rating }
  	arr.inject{ |sum, el| sum + el }.to_f / arr.size
  end

  def longest_review
  	arr = self.reviews.map { |review| review.content }
  	arr.sort[-1]
  end

end
