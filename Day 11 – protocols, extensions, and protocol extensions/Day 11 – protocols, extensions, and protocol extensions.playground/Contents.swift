import UIKit

protocol Identifiable {
    var id: String { get set}
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

let john = User(id: "123456")
displayID(thing: john)

struct Book: Purchaseable {
    var name: String
    var author: String
}

func buy(_ book: Book) {
    print("I'm buying \(book.name)")
}

protocol Purchaseable {
    var name: String { get set }
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}

struct Car: Purchaseable {
    var name: String
    var manufacturer: String
}

func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}

let porche = Car(name: "911 turbo", manufacturer: "Porche")
buy(porche)

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

protocol Product {
    var price: Double { get set }
    var weight: Int { get set }
}

protocol Computer: Product {
    var cpu: String { get set }
    var memory: Int { get set }
    var storage: Int { get set }
}

protocol Laptop: Computer {
    var screenSize: Int { get set }
}

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}
number.isEven

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

let numbers = [4, 8, 15, 16]
let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }

let numbers2 = Set([4, 8, 15, 16])
let allEven2 = numbers2.allSatisfy { $0.isMultiple(of: 2) }

let numbers3 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }
print(allEven, allEven2, allEven3)

protocol Identifiable2 {
    var id: String { get set }
    func identify()
}

extension Identifiable2 {
    func identify() {
        print("My ID is \(id)")
    }
}

struct User2: Identifiable2 {
    var id: String
}

let twostraws = User2(id: "twostraws")
twostraws.identify()
