import UIKit

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel2 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

travel2 {
    "I'm going to \($0) in my car"
}

func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
    var current = values[0]
    for value in values[1...] {
        current = closure(current, value)
    }
    return current
}

let numbers = [10, 20, 30]

let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal + next
}

let sum2 = reduce(numbers, using: +)

print(sum)

let multiplied = reduce(numbers) {
    $0 * $1
}

func travelTo(action: (String, Int) -> String) {
    print("I'm getting ready to go")
    let description = action("London", 60)
    print(description)
    print("I arrived")
}

travelTo {
    "I'm going to \($0) at \($1) miles per hour."
}

func travelWithClosure() -> (String) -> Void {
    var counter = 1
    
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let destination = travelWithClosure()
destination("London")
destination("London")
destination("London")
destination("London")

func makeRandomNumberGenerator() -> () -> Int {
    var previousNumber = 0
    
    return {
        var newNumber: Int
        
        repeat {
            newNumber = Int.random(in: 1...3)
        } while newNumber == previousNumber
        
        previousNumber = newNumber
        return newNumber
    }
}

let generator = makeRandomNumberGenerator()

for _ in 1...10 {
    print(generator())
}
