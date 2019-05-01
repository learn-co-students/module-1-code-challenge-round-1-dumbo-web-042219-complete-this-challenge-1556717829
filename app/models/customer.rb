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

  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self)
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    reviews.length
  end

  def restaurants
    restaur = reviews.map {|review| review.restaurant}
    restaur.uniq
  end

  def self.find_by_name(name)
    # split_name = name.split(" ")
    # all.find {|individual| individual.first_name == split_name[0] && individual.last_name == split_name[1]}
    all.find {|individual| individual.full_name == name}
  end

  def self.find_all_by_first_name(name)
    all.select {|individual| individual.first_name == name}
  end

  def self.all_names
    all.map {|individual| individual.full_name}
  end

end
