require "pry"

# Main Code
class Cat
  attr_accessor :name, :breed, :age, :data, :rating
  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
    @data = []
    @rating = 0
  end
   def add_data(x)
     @data << x
   end
   def average_rating
     unrounded_average = Cat.data.sum.to_f / Cat.data.sum.to_f
     @rating = unrounded_average.round(2)
   end
   def high_rating(*cats)
     cats.max_by(&:rating)
   end
   def info(*cats)
      x = 0
     cats.each do |cat|
      x+=1
      puts "Cat no.#{x}'s name is #{cat.name}, and they are a #{cat.breed} breed, aged #{cat.age} years old.
      This cat is currently rated at #{cat.rating}/5."
      puts "\n"
     end
   end
end
tigga = Cat.new("Tigga", "Moggy", 8)
taffy = Cat.new("Taffy", "Ragdoll", 2)

class Kitten < Cat
end

tikki = Kitten.new("Tikki", taffy.breed, 0.1)

# Sample Data
taffy.data = [5, 4, 4, 3, 5, 5, 5, 4, 5, 4, 2, 5, 4]
tigga.data = [2, 3, 4, 4, 4, 3, 4, 4, 1, 5, 5, 3, 5]
tikki.data = [5, 5, 5, 4, 5, 3, 5, 4, 4, 5, 3, 5, 4]
tigga·add_data(5)


puts "\n"
puts "The cat with the highest rating is: #{Cat.high_rating(tigga, taffy, tikki).name}"
puts "\n"

Cat.info(taffy, tigga, tikki)

puts "Which cat would you like to know about?"
cat_name = gets.chomp
cat_name.downcase!

f = true
while f == true
  puts "To end program please type 'end'."
  puts "What would you like to know about the cat?"
  puts "Options: Name, Age, Breed, Rating"
  request = gets.chomp
  request.downcase!
  binding.pry
  if request == "end"
    f = false
  elsif cat_name.respond_to?(request)
    puts "Checking for #{request}: "
    puts cat_name.send(request)
  else
      puts "invalid request"
  end
end
