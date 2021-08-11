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

let age2: Int! = nil

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"
print(user)

let scores = ["Picard": 800, "Data": 7000, "Troi": 900]
let crusherScore = scores["Chrusher"] ?? 0
let crusherScore2 = scores["Chrusher", default: 0]

let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

let names2 = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]
let surnameLetter = names2["Vincent"]?.first?.uppercased() ?? "?"

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

try! checkPassword("sekrit")

struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

let person = Person(id: "Johnattan")
let person2 = Person(id: "John")

struct Employee {
    var username: String
    var password: String

    init?(username: String, password: String) {
        guard password.count >= 8 else { return nil }
        guard password.lowercased() != "password" else { return nil }

        self.username = username
        self.password = password
    }
}

let tim = Employee(username: "TimC", password: "app1e")
let craig = Employee(username: "CraigF", password: "ha1rf0rce0ne")

class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}

class Person2 {
    var name = "Anonymous"
}

class Customer2: Person2 {
    var id = 12345
}

class Employee2: Person2 {
    var salary = 50_000
}

let customer = Customer2()
let employee = Employee2()
let people = [customer, employee]

for person in people {
    if let customer = person as? Customer2 {
        print("I'm a customer, with id \(customer.id)")
    } else if let employee = person as? Employee2 {
        print("I'm an employee, earning $\(employee.salary)")
    }
}

