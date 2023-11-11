/** Protocols in Swift
 In Swift, protocols define a blueprint of methods, properties, and other requirements that a type can adopt. Protocols provide a way to define a common interface that multiple types can conform to, promoting code reuse and flexibility in your codebase. They also allow for powerful features like protocol inheritance, protocol composition, and associated types.
 */

// 1. Defining a Protocol
// A protocol defines a set of methods, properties, or other requirements.

protocol Animal {
    var name: String { get set }
    func makeSound()
}

// 2. Adopting a Protocol
// A class, struct, or enum can adopt a protocol by conforming to its requirements.

class Dog: Animal {
    var name: String

    init(name: String) {
        self.name = name
    }

    func makeSound() {
        print("Woof!")
    }
}

// 3. Using Protocols
// You can create instances of types that conform to a protocol.

let myDog = Dog(name: "Buddy")
myDog.makeSound()
// Output: Woof!

// 4. Property Requirements
// Protocols can have property requirements.

protocol Shape {
    var area: Double { get }
}

struct Circle: Shape {
    var radius: Double

    var area: Double {
        return Double.pi * radius * radius
    }
}

// 5. Method Requirements
// Protocols can have method requirements.

protocol Playable {
    func play()
}

class Guitar: Playable {
    func play() {
        print("Strumming the guitar.")
    }
}

// 6. Protocol Inheritance
// Protocols can inherit from other protocols.

protocol Vehicle {
    func startEngine()
}

protocol ElectricVehicle: Vehicle {
    func chargeBattery()
}

struct ElectricCar: ElectricVehicle {
    func startEngine() {
        print("Starting the electric car engine.")
    }

    func chargeBattery() {
        print("Charging the electric car battery.")
    }
}

// 7. Protocol Composition
// You can combine multiple protocols using the "&" operator.

protocol Eater {
    func eat()
}

protocol Sleeper {
    func sleep()
}

struct Cat: Eater, Sleeper {
    func eat() {
        print("Cat is eating.")
    }

    func sleep() {
        print("Cat is sleeping.")
    }
}

// 8. Protocol Extensions
// You can extend protocols to provide default implementations.

extension Playable {
    func playLoud() {
        print("Playing loud!")
    }
}

class Piano: Playable {
    func play() {
        print("Playing the piano.")
    }
}

let piano = Piano()
piano.playLoud()
// Output: Playing loud!

// 9. Protocol with Associated Type
// Protocols can have associated types for flexible type requirements.

protocol Container {
    associatedtype Item
    var items: [Item] { get set }

    mutating func addItem(_ item: Item)
}

struct ShoppingCart: Container {
    var items: [String] = []

    mutating func addItem(_ item: String) {
        items.append(item)
    }
}
