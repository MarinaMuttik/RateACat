# Main Code
class Cat
  CATS = []
  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
    @data = []
    @rating = 0
    CATS << self
  end
  attr_accessor :name, :breed, :age, :data, :rating
   def Cat.add_data(x)
     @rating << x
   end
   def Cat.average_rating
     unrounded_average = Cat.data.sum.to_f / Cat.data.sum.to_f
     return unrounded_average.round(2)
   end
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
tigga = Cat.new("Tigga", "Moggy", 8)
taffy = Cat.new("Taffy", "Ragdoll", 2)

class Kitten < Cat
end

tikki = Kitten.new("Tikki", taffy.breed, 0.1)

# Sample Data
taffy.data = [5, 4, 4, 3, 5, 5, 5, 4, 5, 4, 2, 5, 4]
tigga.data = [2, 3, 4, 4, 4, 3, 4, 4, 1, 5, 5, 3, 5]
tikki.data = [5, 5, 5, 4, 5, 3, 5, 4, 4, 5, 3, 5, 4]

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

f = true
while f == true
  puts "To end program please type 'end'."
  puts "What would you like to know about the cat?"
  puts "Options: Name, Age, Breed, Rating"
  request = gets.chomp
  request.downcase!
  if request == "end"
    f = false
  elsif tigga.respond_to?(request)
    puts "Checking for #{request}: "
    puts tigga.send(request)
  else
      puts "invalid request"
  end
end

#when 'cat_name' is used in place of 'tigga' it comes up with 'invalid request' even though cat_name works correctly
