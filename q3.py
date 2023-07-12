# Question 3


def count_word_frequency(sentence):
    
    # split all the word of the string.
    lst = sentence.split()
    # removing full stop from last word of sentence.
    lst[-1]=lst[-1][:-1]
         # Declare a dictionary
    freq_dictionary = {}

    for elements in lst:
    
        if elements in freq_dictionary:
            freq_dictionary[elements] += 1

            # if the dictionary does not have the key as "elements"
            # then create a key "elements" and assign its value to 1.
        else:
            freq_dictionary.update({elements: 1})
    

    return freq_dictionary



# #driver input to check the program.

Sentence = "Harsh kunal kunal harsh navneet navneet."

print(count_word_frequency(Sentence))




