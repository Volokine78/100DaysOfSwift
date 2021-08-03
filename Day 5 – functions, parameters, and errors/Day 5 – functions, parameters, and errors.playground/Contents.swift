import UIKit

func printHelp() {
    let message = """
welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}

printHelp()

func square(number: Int) {
    print("\n", number * number)
}

square(number: 8)

func square1(number: Int) -> Int {
    return number * number
}

let result = square1(number: 8)
print(result)

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")

func greet2(_ person: String, nicely: Bool = true) {
    if nicely {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet2("Taylor")
greet2("Taylor", nicely: false)
A
