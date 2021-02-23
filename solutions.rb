class MyCar
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
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

end

p camry = MyCar.new(2009, "blue", "bluetooth")
p camry.speed_up(20)
p camry.current_speed