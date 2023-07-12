# Question 7


from collections import Counter
 
# function to check if two strings are anagram or not
def check_anagram(s1, s2):
   
    # implementing counter function
    return (Counter(s1) == Counter(s2))

print(check_anagram('vvvishal','isvhvval'))
