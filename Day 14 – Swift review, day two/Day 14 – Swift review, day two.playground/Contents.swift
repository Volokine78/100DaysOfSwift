import UIKit

func favoriteAlbum(name: String) {
    print("My favorite is \(name)")
}

favoriteAlbum(name: "Fearless")

func printAlbumRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}

printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speak Now", year: 2010)
printAlbumRelease(name: "Red", year: 2012)

func countLettersInString(in string: String) {
    print("The string \(string) has \(string.count) letters.")
}

countLettersInString(in: "Hello")

func albumIsTaylor(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
    if name == "Speak Now" { return true}
    
    return false
}

if albumIsTaylor(name: "Fearless") {
    print("That's one of hers!")
} else {
    print("Who made that?")
}

if albumIsTaylor(name: "Blue") {
    print("That's one of hers!")
} else {
    print("Who made that?")
}

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

var status: String?
status = getHaterStatus(weather: "rainy")!

func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

if let haterStatus = getHaterStatus(weather: "rainy") {
    takeHaterAction(status: haterStatus)
}

func yearAlbummReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012}
    if name == "1989" { return 2014}
    
    return nil
}

var year = yearAlbummReleased(name: "Red")

if year == nil {
    print("There was an error")
} else {
    print("It was released in \(year!)")
}

var items = ["James", "John", "Sally"]

func position(of string: String, in array: [String]) -> Int? {
    for i in 0..<array.count {
        if array[i] == string {
            return i
        }
    }
    return nil
}

let jamesPosition = position(of: "James", in: items)
let johnPosition = position(of: "John", in: items)
let sallyPosition = position(of: "Sally", in: items)
let bobPosition = position(of: "Bob", in: items)

func albumReleased(year: Int) -> String? {
    switch year {
        case 2006:
            return "Taylor Swift"
        case 2008:
            return "Fearless"
        case 2010:
            return "Speak Now"
        case 2012:
            return "Red"
        case 2014:
            return "1989"
        default:
            return nil
    }
}

let album = albumReleased(year: 2006)?.uppercased()
print("The album is \(album!)")

let str = "Hello world"
print(str.uppercased())

let album2 = albumReleased(year: 2021) ?? "unknown"
print("The album is \(album2)")

enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatus2(weather: WeatherType) -> String? {
    switch weather {
        case .sun:
            return nil
        case .cloud, .wind:
            return "dislike"
        case .rain:
            return "hate"
        case .snow:
            return "more hate"
    }
}

getHaterStatus2(weather: .cloud)

func getHaterStatus3(weather: WeatherType) -> String? {
    switch weather {
        case .sun:
            return nil
        case .wind(let speed) where speed < 10:
            return "meh"
        case .cloud, .wind:
            return "dislike"
        case .rain, .snow:
            return "hate"
    }
}

getHaterStatus3(weather: .wind(speed: 5))

struct Person {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

print(taylor.clothes)
print(other.shoes)

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor)
print(taylorCopy)

class Person2 {
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}

class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("La la la la")
    }
}

var taylor2 = Singer(name: "Taylor", age: 25)
taylor2.name
taylor2.age
taylor2.sing()

class CountrySinger: Singer {
    override func sing() {
        print("Trucks, guitars and liquor")
    }
}

var taylor3 = CountrySinger(name: "Taylor", age: 25)
taylor3.sing()

class HeavyMetalSinger: Singer {
    var noiseLevel: Int
    
    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    
    override func sing() {
        print("Grrrr rargh rargh rarrrrrgh!")
    }
}

var darkTaylor = HeavyMetalSinger(name: "Dark Taylor", age: 25, noiseLevel: 95)
darkTaylor.sing()

@objcMembers class Class {}
