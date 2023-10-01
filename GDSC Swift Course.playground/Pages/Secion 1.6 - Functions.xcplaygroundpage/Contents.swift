/** 
 Functions in Swift
 In Swift, functions are blocks of reusable code that perform specific tasks. You can define functions, specify parameters, return values, provide default values, and even use advanced features like variadic parameters and in-out parameters. Swift allows you to work with functions as first-class citizens, making them versatile and powerful building blocks for your code.
 */

// 1. Defining a Function
// Functions in Swift are defined using the "func" keyword.

func sayHello() {
    print("Hello, Swift!")
}

// 2. Calling a Function
// You can call a function by using its name followed by parentheses.

sayHello()
// Output: Hello, Swift!

// 3. Function Parameters
// Functions can take parameters to accept input values.

func greet(name: String) {
    print("Hello, \(name)!")
}

greet(name: "Alice")
// Output: Hello, Alice!

// 4. Function Return Values
// Functions can return values using the "->" arrow.

func add(a: Int, b: Int) -> Int {
    return a + b
}

let result = add(a: 5, b: 3)
print("The sum is \(result)")
// Output: The sum is 8

// 5. Function Parameter Labels
// You can use external and internal parameter labels.

func divide(dividend a: Double, by divisor b: Double) -> Double {
    return a / b
}

let quotient = divide(dividend: 10, by: 2)
print("The quotient is \(quotient)")
// Output: The quotient is 5.0

// 6. Default Parameter Values
// You can provide default values for function parameters.

func greetDefault(name: String = "Guest") {
    print("Hello, \(name)!")
}

greetDefault()
greetDefault(name: "Bob")
// Output: Hello, Guest!
//         Hello, Bob!

// 7. Variadic Parameters
// Functions can accept a variable number of parameters using "..." notation.

func average(numbers: Double...) -> Double {
    var total = 0.0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

let avg = average(numbers: 2.0, 3.5, 5.0)
print("The average is \(avg)")
// Output: The average is 3.5

// 8. In-Out Parameters
// You can modify function parameters in-place using "inout" keyword.

func doubleInPlace(number: inout Int) {
    number *= 2
}

var someNumber = 7
doubleInPlace(number: &someNumber)
print("The doubled number is \(someNumber)")
// Output: The doubled number is 14

// 9. Function Types
// Functions in Swift are first-class citizens and can be assigned to variables.

func sayGoodbye() {
    print("Goodbye, Swift!")
}

let farewell: () -> Void = sayGoodbye
farewell()
// Output: Goodbye, Swift!

// 10. Nested Functions
// You can define functions within functions.

func outerFunction() {
    func innerFunction() {
        print("Inside inner function")
    }
    innerFunction()
}

outerFunction()
// Output: Inside inner function
