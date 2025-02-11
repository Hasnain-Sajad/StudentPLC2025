def listFunc():
    return [i for i in range(1, 6)] #Create list of ints from 1 to 5, Haskell equivalent [1..5]

def applicatorFunc(inpFunc, s):
    if s=='s':
        return sum(inpFunc())
    else:
        return sum(inpFunc())/5

print(applicatorFunc(listFunc, 's'))


# Function to generate a list of integers from a to b
def listFunc(a, b):
    return [i for i in range(a, b+1)]  # range is inclusive of b, so we use b+1

# Function to compute either sum or average based on the input 's' or 'a'
def applicatorFunc(inpFunc, a, b, s):
    numbers = inpFunc(a, b)  # Get the list of numbers from inpFunc
    total = sum(numbers)  # Sum of the numbers
    if s == 's':
        return total  # Return sum
    else:
        return total / len(numbers)  # Return average

# Example usage: Compute sum or average for a range of integers
result_sum = applicatorFunc(listFunc, 1, 10, 's')  # Sum of numbers from 1 to 10
print(f"Sum: {result_sum}")

result_avg = applicatorFunc(listFunc, 1, 10, 'a')  # Average of numbers from 1 to 10
print(f"Average: {result_avg}")

