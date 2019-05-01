class Restaurant
  attr_reader :name

  @@all = []
  
  def initialize(name)
    @name = name
    self.all << self
  end

  def self.all
    @@all
  end

  def all
    self.class.all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    clients = self.reviews.map {|review| review.customer}
    clients.uniq
  end

  def average_star_rating
    ratings = self.reviews.map {|review| review.rating}
    (ratings.sum * 1.0) / ratings.count
  end

  def longest_review
    hash = {}
    longest = nil
    longest_length = nil

    self.reviews.each {|review| hash[review] = review.content.length}

    hash.each do |review, content_length|
      if longest.nil? || content_length > longest_length
        longest = review
        longest_length = content_length
      end
    end

    longest
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def inspect
    @name
  end
end
