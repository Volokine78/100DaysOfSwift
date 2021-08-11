import UIKit

var age: Int? = nil
age = 38

var name: String? = "John"

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

func getUsername() -> String? {
    "Taylor"
}

if let username = getUsername() {
    print("username is \(username)")
} else {
    print("No Username")
}

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello, \(unwrapped)!")
}

greet("john")
greet(nil)

func getMeaningOfLife() -> Int? {
    42
}

func printMeaningOfLife() {
    if let name = getMeaningOfLife() {
        print(name)
    }
}

func printMeaningOfLife2() {
    guard let name = getMeaningOfLife() else {
        return
    }
    print(name)
}

printMeaningOfLife()
printMeaningOfLife2()

let str = "5"
let num = Int(str)!

let randomnumber = (1...10).randomElement()!

enum Direction: CaseIterable {
    case north, south, east, west
    
    static func random() -> Direction {
        Direction.allCases.randomElement()!
    }
}

let randomDirection = Direction.allCases.randomElement()!
