/**
 This code illustrates the concepts of variables and constants in Swift. Variables (`var`) are mutable, meaning their values can be changed after declaration, while constants (`let`) are immutable, and their values cannot be changed once assigned. You can also use string interpolation to embed variables and constants within string literals for easy formatting.
*/

// Declare a variable 'first_name' and initialize it with the value "Apple".
var first_name = "Apple"

// Declare a variable 'last_name' and initialize it with the value "Cook".
var last_name = "Cook"

// Declare a constant 'four' with a type annotation of Double and initialize it with the value 4.
let four: Double = 4
print(four) // Output: 4.0

// Declare a constant 'pi' and initialize it with the value 3.14. Swift infers the type as Double.
let pi = 3.14
let app_name = "GDSC-VIT"

// Use string interpolation to create a greeting with 'first_name' and 'last_name' and print it.
print("Hello \(first_name) \(last_name)") // Output: Hello Apple Cook

// Modify the 'first_name' and 'last_name' variables.
first_name = "Tim"
last_name = "Appleseed"

// Use string interpolation again to create a new greeting with the updated names and print it.
print("Hello \(first_name) \(last_name)") // Output: Hello Tim Appleseed
