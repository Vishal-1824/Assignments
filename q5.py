# Question 5

from math import pi

class Circle:
    # writing the class definition
    def __init__(self,radius):
        self.radius =radius
    
    # creating method to calculate area
    def area(self):
        return pi*self.radius**2
    

    # creating method to calculate circumfrence
    def circumfrence(self):
        return 2*pi*self.radius


circle1= Circle(1)
print(circle1.circumfrence())
print(circle1.area())
 