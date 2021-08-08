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

