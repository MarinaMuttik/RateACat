# Sample Data
taffy_data = [5, 4, 4, 3, 5, 5, 5, 4, 5, 4, 2, 5, 4]
tigga_data = [2, 3, 4, 4, 4, 3, 4, 4, 1, 5, 5, 3, 5]
tikki_data = [5, 5, 5, 4, 5, 3, 5, 4, 4, 5, 3, 5, 4]
taffy_average = taffy_data.sum.to_f / taffy_data.count.to_f
tigga_average = tigga_data.sum.to_f / tigga_data.count.to_f
tikki_average = tikki_data.sum.to_f / tikki_data.count.to_f

# Main Code
class Cat
  def initialize(name, breed, age, rating, available)
    @name = name
    @breed = breed
    @age = age
    @rating = rating
    @available = available
  end
  attr_accessor :name, :breed, :age, :rating, :available
   def Cat.high_rating(*cats)
     cats.max_by(&:rating)
   end
   def Cat.info(*cats)
      x = 0
     cats.each do |cat|
      x+=1
      puts "Cat no.#{x}'s name is #{cat.name}, and they are a #{cat.breed} breed, aged #{cat.age} years old.
This cat is currently rated at #{cat.rating}/5."
      puts "\n"
     end
   end
end
tigga = Cat.new("Tigga", "Moggy", 8, tigga_average.round(2), true)
taffy = Cat.new("Taffy", "Ragdoll", 2, taffy_average.round(2), true)

class Kitten < Cat 
end

tikki = Kitten.new("Tikki", taffy.breed, 0.1, tikki_average.round(2), false)

highest = Cat.high_rating(taffy, tigga, tikki)
puts "The highest rated cat is #{highest.name}."
puts "\n"
=begin
Below doesn't work without being assigned to a variable to use instead?:
puts "The cat with the highest rating is: #{Cat.high_rating(tigga, taffy, tikki)}"
=end

puts Cat.info(taffy, tigga, tikki) 
# produces: "#<Cat:0x000055cc591cc728>
#<Cat:0x000055cc591cc7c8>
#<Kitten:0x000055cc591cc638>"
#unsure where from or how!
puts "Which cat would you like to know about?"
cat_name = gets.chomp
cat_name.downcase!

puts "What would you like to know about the cat?"
puts "Options: Name, Age, Breed, Rating, Availability"
request = gets.chomp
request.downcase!
if tigga.respond_to?(request)
  tigga.send(request)
else
    puts "invalid request"
end

#when 'cat_name' is used in place of 'tigga' it comes up with 'invalid request' even though cat_name works correctly
