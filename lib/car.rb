class Car
  attr_reader :make_model, :color, :price, :mileage

  def initialize(make_model, color, price, mileage = 0)
    @make_model = make_model
    @color = color
    @price = price
    @mileage = mileage
  end

  def set_price(p)
    @price = p
  end
  def paint(c)
    @color = c
  end
  def show_car_info
    puts "\nMake and Model: #{self.make_model},\nColor: #{self.color},\nPrice: $#{self.price},\nMileage: #{self.mileage} miles"
    b = "\nMake and Model: #{self.make_model},\nColor: #{self.color},\nPrice: $#{self.price},\nMileage: #{self.mileage} miles"
  end
  def travel(distance)
    @mileage = @mileage + distance
    puts "\nThe car is traveling #{distance} miles\n"
  end
end

# porsche = Car.new("Porsche 718 Cayman GTS 4.0", "Black", 90300, 10000)
# porsche.show_car_info
# porsche.paint("Green")
# porsche.travel(6500)
# porsche.set_price(82000)
# porsche.show_car_info()

# toyota = Car.new('Toyota Corolla LE', 'Red', 21550, 10000)
# toyota.show_car_info()
# toyota.paint('Gold')
# toyota.travel(4000)
# toyota.set_price(19500)
# toyota.show_car_info()
