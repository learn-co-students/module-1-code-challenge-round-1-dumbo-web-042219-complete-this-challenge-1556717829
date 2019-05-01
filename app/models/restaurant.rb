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
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customer
    reviews.map do |review|
      review.customer
    end
  end

  def longest_review
    reviews.max_by(&:length)
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def average_star_rating
    total = 0
    self.all.map do |review|
      total += review.rating
    end
    average = total / self.all.length
  end

end
