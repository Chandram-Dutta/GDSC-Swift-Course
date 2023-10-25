/** Structs and Classes in Swift
 In Swift, both structs and classes are used to define custom data types, but they have different characteristics. Structs are value types, while classes are reference types. Understanding when to use each depends on your specific requirements and the behavior you want from your data types.
*/

// 1. Defining a Struct
// A struct is a value type that defines a blueprint for a new type.

struct Point {
    var x: Double
    var y: Double
}

// 2. Creating an Instance
// You can create an instance of a struct by initializing it.

var origin = Point(x: 0.0, y: 0.0)

// 3. Accessing Properties
// Access properties of a struct using dot notation.

origin.x = 5.0
origin.y = 3.0

print("Point coordinates: (\(origin.x), \(origin.y))")
// Output: Point coordinates: (5.0, 3.0)

// 4. Defining a Class
// A class is a reference type that defines a blueprint for a new type.

class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sayHello() {
        print("Hello, my name is \(name) and I'm \(age) years old.")
    }
}

// 5. Creating an Instance
// You can create an instance of a class by initializing it.

var person1 = Person(name: "Alice", age: 25)

// 6. Accessing Properties and Methods
// Access properties and methods of a class using dot notation.

person1.name = "Bob"
person1.sayHello()
// Output: Hello, my name is Bob and I'm 25 years old.

// 7. Value Type vs. Reference Type
// Structs are value types and are copied when assigned or passed to a function.
// Classes are reference types and point to the same instance in memory.

var pointA = Point(x: 3.0, y: 4.0)
var pointB = pointA

pointA.x = 5.0

print("Point A: (\(pointA.x), \(pointA.y)), Point B: (\(pointB.x), \(pointB.y))")
// Output: Point A: (5.0, 4.0), Point B: (3.0, 4.0)

var person2 = person1
person2.name = "Charlie"

person1.sayHello() // Output: Hello, my name is Charlie and I'm 25 years old.

// 8. Structs and Functions
// You can define functions within a struct to operate on its properties.

struct Rectangle {
    var width: Double
    var height: Double

    func area() -> Double {
        return width * height
    }
}

var rectangle = Rectangle(width: 4.0, height: 3.0)
let area = rectangle.area()

print("The area of the rectangle is \(area) square units.")
// Output: The area of the rectangle is 12.0 square units.

// 9. Initializers
// Structs and classes can have custom initializers for property setup.

struct City {
    var name: String
    var population: Int

    init(name: String, population: Int) {
        self.name = name
        self.population = population
    }
}

var newYork = City(name: "New York", population: 8400000)

// 10. Inheritance (Classes Only)
// Classes support inheritance to create a subclass from a superclass.

class Student: Person {
    var studentID: String

    init(name: String, age: Int, studentID: String) {
        self.studentID = studentID
        super.init(name: name, age: age)
    }
}

var student = Student(name: "David", age: 20, studentID: "S12345")

student.sayHello()
// Output: Hello, my name is David and I'm 20 years old.

// 11. Access Control
// You can control the access level of properties and methods using keywords like private, internal, public, and open.

public struct PublicStruct {
    public var property: Int
    public func method() {}
}

// 12. Value Semantics
// Structs promote value semantics, which helps prevent unwanted side effects.

var value1 = 42
var value2 = value1
value2 = 100

print("Value1: \(value1), Value2: \(value2)")
// Output: Value1: 42, Value2: 100
