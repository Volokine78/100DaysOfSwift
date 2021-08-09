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

struct Person3 {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let mike = Person3(id: "12345")
print(mike.identify())

struct FacebookUser {
    private var privatePosts: [String] = ["private"]
    public var publicPosts: [String]
    
    init(publicPosts: [String]) {
        self.publicPosts = publicPosts
    }
}
let user56 = FacebookUser(publicPosts: ["post"])
user56.publicPosts

struct Doctor {
    var name: String
    var location: String
    private var currentPatient = "No one"
    
    init(name: String, location: String, currentPatient: String) {
        self.name = name
        self.location = location
        self.currentPatient = currentPatient
    }
}
let drJones = Doctor(name: "Esther Jones", location: "Bristol", currentPatient: "James")
