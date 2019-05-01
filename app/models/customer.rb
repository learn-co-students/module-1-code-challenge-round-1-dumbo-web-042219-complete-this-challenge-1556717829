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

  def add_review(restaurant,content,rating)
    new_review = Review.new(restaurant,content,rating,self)
  end

  def self.num_reviews
    Review.all
  end

  def self.restaurants
    Restaurant.all.uniq
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def find_by_name(first_name,last_name)
    Customer.all.find do |customer|
      customer.first_name == first_name && customer.last_name == last_name
    end
  end

  def find_all_by_first_name(first_name)
    Customer.all.select do |customer|
      customer.first_name == first_name
    end
  end

  def all_names
    new_array = Customer.all.full_name
  end
    new_array

end
