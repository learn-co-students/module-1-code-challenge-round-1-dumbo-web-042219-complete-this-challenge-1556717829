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

  def all_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurant
    all_reviews.map do |review|
      review.restaurant
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    all_reviews.length
  end

  def restaurants
    all_reviews.uniq
  end

  # def self.find_by_name(name)
  #   self.all.find do |name|
  #     name.first_name + name.last_name == name
  #   end
  # end

  def self.find_by_name(name)
    self.all.find do |name|
      name.full_name == name
    end
  end

  # def self.find_by_name(name)
  #   self.all.find do |name|
  #     name.split(" ") == name
  #   end
  # end

  def self.find_all_by_first_name(name)
    self.all.select do |name|
      name.first_name == name
    end
  end

  def self.all_names
    @@all
  end

end
