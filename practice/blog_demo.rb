
class Frenchie

 attr_reader    :name, :color, :gender
 attr_accessor  :weight, :age

 def initialize(name, color, gender, weight, age)
  @name = name
  @color = color
  @gender = gender
  @weight = weight
  @age = age
 end


def show
  puts "Your Frenchie #{name} is a #{color} #{gender}"
  puts "That ball of fatness weighs #{weight} pounds"
  young_old
end

def young_old
  if age >= 6
   puts "#{name} is getting up there!"
  elsif age < 6 && age > 2
    puts "#{name} is considered an adult dog."
  else
    puts "#{name} is just a young pup!"
  end
end

end


dog = Frenchie.new("Jax", "cream", "male", "25", 7 )
dog.show
p dog.age


