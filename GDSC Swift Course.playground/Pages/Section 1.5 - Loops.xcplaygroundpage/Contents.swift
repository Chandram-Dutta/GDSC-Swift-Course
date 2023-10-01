/** 
 Loops in Swift
 In Swift, you have various types of loops, including the `for-in` loop for iterating over sequences, the `while` and `repeat-while` loops for executing code based on conditions, and the ability to control loops using `continue` and `break`. You can also use ranges and stride for precise control over loop iterations and labels for nested loops to control their flow.
 */

// 1. for-in Loop
// The "for-in" loop is used to iterate over a sequence, like an array or a range.

let numbers = [1, 2, 3, 4, 5]

for number in numbers {
    print(number)
}
// Output:
// 1
// 2
// 3
// 4
// 5

// 2. While Loop
// The "while" loop repeats a block of code while a condition is true.

var countdown = 5

while countdown > 0 {
    print(countdown)
    countdown -= 1
}
// Output:
// 5
// 4
// 3
// 2
// 1

// 3. Repeat-While Loop
// The "repeat-while" loop is similar to the "do-while" loop in other languages; it always executes at least once.

var attempts = 0

repeat {
    print("Attempt \(attempts)")
    attempts += 1
} while attempts < 3
// Output:
// Attempt 0
// Attempt 1
// Attempt 2

// 4. Using Ranges
// You can use ranges to control loop iterations.

for i in 1...5 {
    print(i)
}
// Output:
// 1
// 2
// 3
// 4
// 5

// 5. Using Stride
// Stride is used for iterating with a step value.

for i in stride(from: 0, to: 10, by: 2) {
    print(i)
}
// Output:
// 0
// 2
// 4
// 6
// 8

// 6. Continue and Break
// You can use "continue" to skip to the next iteration and "break" to exit a loop prematurely.

for i in 1...10 {
    if i % 2 == 0 {
        continue // Skip even numbers
    }
    if i == 7 {
        break // Exit loop when i is 7
    }
    print(i)
}
// Output:
// 1
// 3
// 5

// 7. Labels for Loops
// You can label loops to control which loop to continue or break.

outerLoop: for i in 1...3 {
    for j in 1...3 {
        if i * j == 6 {
            break outerLoop // Break out of both loops
        }
        print("\(i) * \(j) = \(i * j)")
    }
}
// Output:
// 1 * 1 = 1
// 1 * 2 = 2
// 1 * 3 = 3
// 2 * 1 = 2
// 2 * 2 = 4
// 2 * 3 = 6

// 8. Collection Iteration with enumerated()
// To iterate over elements and their indices in an array, use the "enumerated()" function.

let fruits = ["Apple", "Banana", "Cherry"]

for (index, fruit) in fruits.enumerated() {
    print("\(index + 1). \(fruit)")
}
// Output:
// 1. Apple
// 2. Banana
// 3. Cherry
