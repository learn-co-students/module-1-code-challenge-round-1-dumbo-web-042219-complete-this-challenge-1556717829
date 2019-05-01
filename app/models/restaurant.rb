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

  def customers(name)
    people = Review.all.select do |review|
        review.restaurant == name
      end
      people.uniq
  end

  def average_star_rating
    count = 0
    total = Review.all.map do |rev|
      count += 1
      total = count
    end
    average = total / Review.all.length
    average
end

  end

  def longest_review
    Review.content.all.map do |rev|
      rev.count
  end
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


end
