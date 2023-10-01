/** 
 Conditional Statements in Swift
 In Swift, you have various tools for handling conditional logic, such as `if` statements, `switch` statements, ternary operators, logical operators, range operators, and the ability to nest conditionals for more complex scenarios. These allow you to make decisions and control the flow of your program based on different conditions.
 */

// 1. The if Statement
// The "if" statement is used to perform a block of code based on a condition.

let temperature = 25

if temperature < 32 {
    print("It's freezing outside!")
} else {
    print("It's not freezing.")
}
// Output: It's freezing outside!

// 2. The else-if Ladder
// You can use multiple "else-if" blocks to check multiple conditions.

let number = 5

if number > 10 {
    print("Number is greater than 10.")
} else if number == 10 {
    print("Number is exactly 10.")
} else {
    print("Number is less than 10.")
}
// Output: Number is less than 10.

// 3. The switch Statement
// The "switch" statement is used to compare a value against multiple possible matching patterns.

let dayOfWeek = "Monday"

switch dayOfWeek {
case "Monday":
    print("It's the start of the week.")
case "Friday":
    print("It's almost the weekend!")
default:
    print("It's an ordinary day.")
}
// Output: It's the start of the week.

// 4. Ternary Conditional Operator
// Swift allows you to use a compact ternary operator for simple conditional expressions.

let age = 20
let canVote = age >= 18 ? "Yes" : "No"

print("Can I vote? \(canVote)")
// Output: Can I vote? Yes

// 5. Logical Operators
// Swift supports logical operators like "&&" (and), "||" (or), and "!" (not) to combine conditions.

let isSunny = true
let isWarm = true

if isSunny && isWarm {
    print("It's a perfect day!")
}

let hasCoffee = false
let hasDonut = true

if hasCoffee || hasDonut {
    print("Time for a snack!")
}

let isRainy = false

if !isRainy {
    print("No rain today!")
}
// Output: It's a perfect day!
//         Time for a snack!
//         No rain today!

// 6. Range Operators
// Swift uses "..." (closed range operator) and "..<" (half-open range operator) for range conditions.

let score = 85

switch score {
case 0...49:
    print("You failed.")
case 50..<70:
    print("You passed but could do better.")
case 70...100:
    print("You did great!")
default:
    print("Invalid score.")
}
// Output: You did great!

// 7. Combining Conditions
// You can combine conditions using parentheses and logical operators.

let isWeekend = false
let isHoliday = true

if (isWeekend || isHoliday) && isSunny {
    print("Perfect time for a picnic!")
}
// Output: Perfect time for a picnic!

// 8. Nested Conditional Statements
// You can nest if statements inside other if statements for complex conditions.

let isEvening = true

if isSunny {
    if isEvening {
        print("Beautiful sunset!")
    } else {
        print("Bright and sunny!")
    }
} else {
    print("Cloudy day.")
}
// Output: Beautiful sunset!
