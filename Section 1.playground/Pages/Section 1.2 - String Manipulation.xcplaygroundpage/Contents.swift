/**
 This code demonstrates various string manipulation techniques in Swift, including multi-line strings (`"""..."""`), string concatenation using the `+` operator, string interpolation with `\(variable)`, and splitting a string into components using the `split` method.
 */

// Declare a String variable called 'name' and initialize it with the value "Tim Cook".
var name = "Tim Cook"

// Declare a multi-line String variable called 'haiku' containing a haiku poem.
var haiku = """
Over the wintry
Forest, winds howl in rage
With no leaves to blow.
"""

// Print the haiku poem.
print(haiku)

// Concatenate the String "Hello " with the 'name' variable and print the result.
print("Hello " + name) // Output: Hello Tim Cook

// Use string interpolation to create a greeting with the uppercase version of 'name' and print it.
print("Hello \(name.uppercased())") // Output: Hello TIM COOK

// Split the 'name' into a first name and last name based on the space character and print them.
var fullName = name.split(separator: " ")
print("First Name: \(fullName[0])") // Output: First Name: Tim
print("Last Name: \(fullName[1])")  // Output: Last Name: Cook
