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

  	def customer
  		customer = self.review.map(&:customer)
  		customer.uniq
  	end

  	def review
 		Review.all.select {|review| review.restaurant == self }
  	end

  	def rating
  		self.review.map(&:rating)
  	end

  	def average_star_rating
 		self.rating.reduce(:+) / self.rating.size.to_f
	end

	def content
		self.review.map(&:content)
	end

	def longest_review
		self.content.max_by{|content| content.size}
	end

	def self.find_by_name(name)
 		@@all.find {|restaurant| restaurant.name == name}
  	end
end
