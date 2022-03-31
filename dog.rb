class Dog
    attr_reader :breed,:age 
    attr_accessor :name

def initialize (name, breed, age)
    @name = name
    @breed = breed
    @age  = age
    @walk = []     
end

def walk_the_dog(kms)
    @walk << kms
end

def walked_distance 
  @walk.length > 0 ? @walk.reduce{|walk1, walk2| walk1 + walk2}
          : 0
end
  
def display_walks
puts "#{@name} is #{@breed} and #{@age} years old."
puts "#{@name} has had #{@walk.length} walks and walked #{walked_distance}kms today:"
 @walk.each_with_index do |walk_the_dog, index|
            puts "#{index+1}. #{walk_the_dog} km"
  end
  
end
  
doggo = Dog.new("Roy", "Labrador", 8)
doggo.walk_the_dog(2)
doggo.walk_the_dog(1)
doggo.display_walks
end