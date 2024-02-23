'''
A program that lets you make your own dream car
Defines a Car class with attributes make_model, color, price, mileage
Defines class methods that let you set the price of the car, its paint,
its color, show its info, and lets the car travel a distance
'''

class Car:
	# Part A, constructor that makes attributes make/model of car, color of car, car's price
	def __init__(self, make_model, color, price):
		self.make_model = make_model
		self.color = color
		self.price = price
		self.mileage = 0

	# Part B, instance methods
	def set_price(self, p):
		self.price = p
	def paint(self, c):
		self.color = c
	def show_car_info(self):
		print(f'\nMake and Model: {self.make_model}\nColor: {self.color}\nPrice: ${self.price:,}\nMileage: {self.mileage:,} miles')
	def travel(self, distance):
		self.distance = distance
		print(f'\nThe car is traveling {self.distance} miles.')
		self.mileage += self.distance

# Part C, call the instance methods for different car objects
porsche = Car('Porsche 718 Cayman GTS 4.0', 'Black', 90300)
porsche.show_car_info()
porsche.paint('Green')
porsche.travel(6500)
porsche.set_price(82000)
porsche.show_car_info()

toyota = Car('Toyota Corolla LE', 'Red', 21550)
toyota.show_car_info()
toyota.paint('Gold')
toyota.travel(4000)
toyota.set_price(19500)
toyota.show_car_info()