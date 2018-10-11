class CatCollection

  attr_accessor :cats

  def initialize(cats = [])
    @cats = cats
  end

  def average_rating
    cats.map(&:average_rating).sum / cats.count.round(2)
  end

  def high_rating
    cats.max_by(&:average_rating)
  end

  def self.info(*cats)
    x = 0
    cats.each do |cat|
      x += 1
      puts "Cat no.#{x}'s name is #{cat.name}, and they are a #{cat.breed} breed, aged #{cat.age} years old.
      This cat is currently rated at #{cat.rating}/5."
      puts "\n"
    end
  end
end
