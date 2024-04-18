def add(a, b):
    result = a + b
    print("The result inside the function is:", result)  # Using print to display the result
    return result  # Using return to send the result back to the caller

# Calling the function
sum_result = add(3, 4)
print("The result outside the function is:", sum_result)  # Using print to display the returned result
