class Review
  attr_reader :customer, :restaurant
  attr_accessor :rating, :content
  @@all

  def initialize(cumstomer, restaurant, rating, content)
    @cumstomer = cumstomer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end


  def self.all
  @@all
  end

  def rating
  #     - returns the star rating for a restaurant. This should be an integer from 1-5
  Review.all.map do |review|
    count = 0
    stars = 0
    review.restaurant.each do |restaurants|
      if restaurant.rating == (1..5)
        count +=1
        stars += rating
      elsif restaurant.rating < 1
        count +=1
        stars += 1
      elsif restaurant.rating > 5
        count += 1
        stars += 5
      end
    end
    average=(stars)/(count)
  end  
  end

  def content
  #     - returns the review content, as a string, for a particular review
  Review.all.map do |review|
    review.content
    end
  end

end
