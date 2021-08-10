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
