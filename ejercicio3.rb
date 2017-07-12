class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end

  def to_s
    "#{@model} #{@year} #{@start}"
  end
end

class Car < Vehicle
  def initialize
    @contador = 0
  end

  def self.count
    @contador +=1
  end

  def engine_start
    super
    puts 'El motor se ha encendido!'
  end
end

array = []
10.times { array << Car.new }

puts Car.new.engine_start
print array
puts array.count
