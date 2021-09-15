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

class TaylorFan2 {
    private var name: String?
}

class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The album \(name) sold lots."
    }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The studio album \(name) sold lots."
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The live album \(name) sold lots."
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]
var allAlbums2: [Album] = [taylorSwift, fearless]

for album in allAlbums {
    print(album.getPerformance())
}

for album in allAlbums {
    if let studioAlbum = album as? StudioAlbum {
        print(studioAlbum.studio)
    } else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
}

for album in allAlbums2 {
    let studioAlbum = album as! StudioAlbum
    print(studioAlbum.studio)
}

for album in allAlbums2 as! [StudioAlbum] {
    print(album.studio)
}

for album in allAlbums2 as? [LiveAlbum] ?? [LiveAlbum]() {
    print(album.location)
}

let number = 5
let text = String(number)
print(text)
