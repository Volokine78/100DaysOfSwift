import UIKit

struct Person {
    var clothes: String
    var shoes: String

    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")
taylor.describe()
other.describe()

struct Person2 {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue).")
        }
        
        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes).")
        }
    }
    
    func updateUI(msg: String) {
        print(msg)
    }
}

var taylor2 = Person2(clothes: "T-shirts")
taylor2.clothes = "short skirts"

struct Person3 {
    var age: Int
    
    var ageInDogYears: Int {
            return age * 7
    }
}

var fan = Person3(age: 25)
print(fan.ageInDogYears)

struct TaylorFan {
    static var favoriteSong = "Look What You Make Me Do"
    
    var name: String
    var age: Int
}

let fan2 = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)
