module ForSubClass
end
class Vehicle
  @@number_of_cars_created = 0

  def self.gas_mileage(gallons, distance)
    puts "You gas mileage is #{gallons} per #{distance}"
  end
  attr_accessor :color
  attr_reader :year
  NUMBER_OF_DOORS = 4
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@number_of_cars_created += 1
  end

  def age 
    puts "Your #{self.model} is #{years_old} years old"
  end

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def speed_up(number)
    @current_speed += number
    puts "You're driving at #{@current_speed}"
  end
  def brake(number)
    @current_speed -= number
    puts "You're driving at #{@current_speed}"
  end 
  def shut_off 
    @current_speed = 0
    puts "Let's park the car!"
  end
  def current_speed
    puts "Your current speed is #{@current_speed}"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job is great!"
  end 

  private 
   def years_old
    time.now.year - self.year
   end




end

class MyCar < Vehicle
  include ForSubClass

  def to_s
    puts "Your new #{color} paint job is great!"
  end
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS =  2
end

class Student 
def initialize(name, grade)
  @name = name
  @grade = grade 
end
def better_grade_than?(other_student)
  grade > other_student.grade    
end

protected 

def grade 
  @grade 
end

end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)

puts "Well done !" if joe.better_grade_than?(bob)