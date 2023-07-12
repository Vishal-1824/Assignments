# Question 2 

l1 = [1,2,3]
l2 = l1
l3 = l1[:]
print(l1 is l2)
print(l1 is l3)

# Explanation
#Statement l2=l1 assigns the same object to both the list . Hence first output is True.
# l3 = l1[:] assings a new list identical to the l1 list but the two objects are different. Hence the second output is False.