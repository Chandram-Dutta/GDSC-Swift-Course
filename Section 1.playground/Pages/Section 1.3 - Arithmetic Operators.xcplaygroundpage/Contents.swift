/**
 This code demonstrates various arithmetic operations in Swift, including addition, subtraction, multiplication, division, and modulus.
 It also shows how to use compound assignment operators (`+=`, `-=`, `*=`, and `/=`) to update the value of a variable while performing an operation.
 */

// Declare two Double variables, num1 and num2, and initialize them with values 23 and 46.
var num1: Double = 23
var num2: Double = 46

// Perform addition using the + operator and print the result.
print(num1 + num2) // Output: 69.0

// Perform subtraction using the - operator and print the result.
print(num1 - 32)   // Output: -9.0

// Perform multiplication using the * operator and print the result.
print(num1 * num2) // Output: 1058.0

// Perform division using the / operator and print the result.
print(num1 / num2) // Output: 0.5

// Perform modulus operation using the % operator and print the result.
print(5 % 3)       // Output: 2

// Print the current value of num1.
print(num1)        // Output: 23.0

// Increment the value of num1 by 1 using the += operator and print the updated value.
num1 += 1
print(num1)        // Output: 24.0

// Decrement the value of num1 by 5 using the -= operator and print the updated value.
num1 -= 5
print(num1)        // Output: 19.0

// Multiply the value of num1 by 2 using the *= operator and print the updated value.
num1 *= 2
print(num1)        // Output: 38.0

// Divide the value of num1 by 3 using the /= operator and print the updated value.
num1 /= 3
print(num1)        // Output: 12.666666666666666
