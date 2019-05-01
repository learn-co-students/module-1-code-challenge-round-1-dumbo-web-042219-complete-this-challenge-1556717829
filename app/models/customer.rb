class Customer
attr_accessor :review, :first_name, :last_name

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

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def add_review(content, rating, restaurant)
    Review.new(content, rating, self, restaurant)
  end

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants(name)
    place = Review.all.select do |review|
      review.restaurant == name
    end
    place.uniq
  end

  def self.find_by_name(name)
    splitit = name.split
    first = all.find do |cust|
      cust.first_name == splitit[0]
    end
    last = all.find do |cust|
      cust.last_name == splitit[1]
    end
    person = first + last_name
    person
  end

  def self.find_all_by_first_name(name)
    all.select do |cust|
      cust.first_name == name
    end
  end

  def self.all_names
    all.map {|cust| cust.first_name}
  end

end
