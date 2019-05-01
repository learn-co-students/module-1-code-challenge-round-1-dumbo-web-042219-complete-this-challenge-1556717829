class Review

attr_reader :customer, :restaurant, 
attr_accessor :content, :rating

@@all = []

  def self.all
  	@@all
  end

  def initialize(restaurant, content, rating, customer)
  	@restaurant = restaurant
  	@content = content
  	@rating = rating
  	@customer = customer
  	@@all << self
  end


end