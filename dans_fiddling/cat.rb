require 'pry'
require_relative 'cat_collection'

class Cat

  attr_accessor :name, :breed, :age, :data, :ratings

  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
    @ratings = []
  end

  def add_rating(x)
   @ratings << x
  end

  def average_rating
    ratings.sum.to_f / ratings.count
  end

  def query(attribute_name)
    attributes[attribute_name]
  end

  private

  def attributes
    {
      'name' => name,
      'breed' => breed,
      'age' => age,
      'data' => data,
      'rating' => rating
    }
  end
end

in_marinas_dungeon = CatCollection.new
tiggy = Cat.new('Tiggy', 'tiger', 6)

in_marinas_dungeon.cats << tiggy

binding.pry

puts 'jhi'
