class Review

 @@all = []

 attr_accessor  :content, :rating
 attr_reader  :author,  :restaurant

 def initialize(restaurant,content,rating,author)
   @restaurant = restaurant
   @content = content
   @rating = rating
   @author = author
   @@all << self
 end

 def self.all
   @@all
 end

 def customer
   self.author 
 end


# Review#rating
# returns the star rating for a restaurant. This should be an integer from 1-5
#
# Review#content
# returns the review content, as a string, for a particular review
