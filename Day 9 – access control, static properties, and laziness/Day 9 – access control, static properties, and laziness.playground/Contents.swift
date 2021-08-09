import UIKit

struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
print(user.username)
user.username = "twostraws"
print(user.username)

struct User2 {
    var name: String
    var yearsActive = 0
}

let roslin = User2(name: "Laura Roslin")
let adama = User2(name: "William Adama", yearsActive: 45)

struct Employee {
    var name: String
    var yearsActive = 0
    
    init() {
        name = "Anonymous"
        print("Creating anonymous employee.")
    }
}

let laura = Employee()

struct Employee2 {
    var name: String
    var yearsActive = 0
}

extension Employee2 {
    init() {
        name = "Anonymous"
        print("Creating an anonymous employee..")
    }
}

let adam = Employee2(name: "Adam Silver", yearsActive: 46)
let anon = Employee2()

struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

struct Student {
    var name: String
    var bestFriend: String
    
    init(name: String, bestFriend: String) {
        print("Enrolling \(name) in class...")
        self.name = name
        self.bestFriend = bestFriend
    }
}

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Person2(name: "Ed")
ed.familyTree

struct Student2 {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student2.classSize += 1
    }
}

let ted = Student2(name: "Ted")
let taylor = Student2(name: "Taylor")
let john = Student2(name: "John")
print(Student2.classSize)
