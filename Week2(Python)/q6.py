 # Question 6

def uniq_list(list):
    # cretaing set of unique elements and comapring it's size with the list.
    uniq_elements= set(list)
    return not(len(uniq_elements)== len(list))

my_list=[2,3,4,5,2]
print(uniq_list(my_list))
