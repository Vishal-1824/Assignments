
# Question 4
class MathUtils:
    def is_prime(num):

        if num <2:
            return False
        
        else:
            i = 2
            while (i*i <= num):
                if num%i == 0:
                    return False
                i+=1
        
        return True
    
for i in range(20):
    print("{}: {}".format(i, MathUtils.is_prime(i)))
